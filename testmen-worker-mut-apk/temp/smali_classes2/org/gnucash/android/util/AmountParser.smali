.class public Lorg/gnucash/android/util/AmountParser;
.super Ljava/lang/Object;
.source "AmountParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 6
    .param p0, "amount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 22
    .local v0, "formatter":Ljava/text/DecimalFormat;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 23
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 24
    .local v1, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {v0, p0, v1}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    .line 27
    .local v2, "parsedAmount":Ljava/math/BigDecimal;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 28
    :cond_0
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Parse error"

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 30
    :cond_1
    return-object v2
.end method
