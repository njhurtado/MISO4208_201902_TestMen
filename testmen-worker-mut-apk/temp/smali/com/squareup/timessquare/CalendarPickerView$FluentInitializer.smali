.class public Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
.super Ljava/lang/Object;
.source "CalendarPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FluentInitializer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method public constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayOnly()Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$702(Lcom/squareup/timessquare/CalendarPickerView;Z)Z

    .line 318
    return-object p0
.end method

.method public inMode(Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 1
    .param p1, "mode"    # Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iput-object p1, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .line 263
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$300(Lcom/squareup/timessquare/CalendarPickerView;)V

    .line 264
    return-object p0
.end method

.method public setShortWeekdays([Ljava/lang/String;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 5
    .param p1, "newShortWeekdays"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/text/DateFormatSymbols;

    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$500(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 310
    .local v0, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0, p1}, Ljava/text/DateFormatSymbols;->setShortWeekdays([Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 312
    invoke-virtual {v3}, Lcom/squareup/timessquare/CalendarPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/squareup/timessquare/R$string;->day_name_format:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 311
    invoke-static {v1, v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$602(Lcom/squareup/timessquare/CalendarPickerView;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    .line 313
    return-object p0
.end method

.method public withHighlightedDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 304
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->withHighlightedDates(Ljava/util/Collection;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v0

    return-object v0
.end method

.method public withHighlightedDates(Ljava/util/Collection;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Date;",
            ">;)",
            "Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "dates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Date;>;"
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->highlightDates(Ljava/util/Collection;)V

    .line 300
    return-object p0
.end method

.method public withSelectedDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 1
    .param p1, "selectedDates"    # Ljava/util/Date;

    .prologue
    .line 272
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->withSelectedDates(Ljava/util/Collection;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v0

    return-object v0
.end method

.method public withSelectedDates(Ljava/util/Collection;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Date;",
            ">;)",
            "Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "selectedDates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Date;>;"
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v1, v1, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    sget-object v2, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SINGLE mode can\'t be used with multiple selectedDates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v1, v1, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    sget-object v2, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->RANGE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RANGE mode only allows two selectedDates.  You tried to pass "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_1
    if-eqz p1, :cond_2

    .line 288
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 289
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v2, v0}, Lcom/squareup/timessquare/CalendarPickerView;->selectDate(Ljava/util/Date;)Z

    goto :goto_0

    .line 292
    .end local v0    # "date":Ljava/util/Date;
    :cond_2
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$400(Lcom/squareup/timessquare/CalendarPickerView;)V

    .line 294
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$300(Lcom/squareup/timessquare/CalendarPickerView;)V

    .line 295
    return-object p0
.end method
