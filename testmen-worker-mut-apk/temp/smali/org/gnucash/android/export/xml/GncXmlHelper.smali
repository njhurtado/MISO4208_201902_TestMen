.class public abstract Lorg/gnucash/android/export/xml/GncXmlHelper;
.super Ljava/lang/Object;
.source "GncXmlHelper.java"


# static fields
.field public static final ATTR_KEY_CD_TYPE:Ljava/lang/String; = "cd:type"

.field public static final ATTR_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final ATTR_KEY_VERSION:Ljava/lang/String; = "version"

.field public static final ATTR_VALUE_BOOK:Ljava/lang/String; = "book"

.field public static final ATTR_VALUE_FRAME:Ljava/lang/String; = "frame"

.field public static final ATTR_VALUE_GUID:Ljava/lang/String; = "guid"

.field public static final ATTR_VALUE_NUMERIC:Ljava/lang/String; = "numeric"

.field public static final ATTR_VALUE_STRING:Ljava/lang/String; = "string"

.field public static final BOOK_VERSION:Ljava/lang/String; = "2.0.0"

.field public static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final KEY_COLOR:Ljava/lang/String; = "color"

.field public static final KEY_CREDIT_FORMULA:Ljava/lang/String; = "credit-formula"

.field public static final KEY_CREDIT_NUMERIC:Ljava/lang/String; = "credit-numeric"

.field public static final KEY_DEBIT_FORMULA:Ljava/lang/String; = "debit-formula"

.field public static final KEY_DEBIT_NUMERIC:Ljava/lang/String; = "debit-numeric"

.field public static final KEY_DEFAULT_TRANSFER_ACCOUNT:Ljava/lang/String; = "default_transfer_account"

.field public static final KEY_EXPORTED:Ljava/lang/String; = "exported"

.field public static final KEY_FAVORITE:Ljava/lang/String; = "favorite"

.field public static final KEY_FROM_SCHED_ACTION:Ljava/lang/String; = "from-sched-xaction"

.field public static final KEY_NOTES:Ljava/lang/String; = "notes"

.field public static final KEY_PLACEHOLDER:Ljava/lang/String; = "placeholder"

.field public static final KEY_SCHEDX_ACTION:Ljava/lang/String; = "sched-xaction"

.field public static final KEY_SPLIT_ACCOUNT_SLOT:Ljava/lang/String; = "account"

.field public static final RECURRENCE_VERSION:Ljava/lang/String; = "1.0.0"

.field public static final TAG_ACCOUNT:Ljava/lang/String; = "gnc:account"

.field public static final TAG_ACCT_COMMODITY:Ljava/lang/String; = "act:commodity"

.field public static final TAG_ACCT_DESCRIPTION:Ljava/lang/String; = "act:description"

.field public static final TAG_ACCT_ID:Ljava/lang/String; = "act:id"

.field public static final TAG_ACCT_NAME:Ljava/lang/String; = "act:name"

.field public static final TAG_ACCT_SLOTS:Ljava/lang/String; = "act:slots"

.field public static final TAG_ACCT_TYPE:Ljava/lang/String; = "act:type"

.field public static final TAG_BOOK:Ljava/lang/String; = "gnc:book"

.field public static final TAG_BOOK_ID:Ljava/lang/String; = "book:id"

.field public static final TAG_BUDGET:Ljava/lang/String; = "gnc:budget"

.field public static final TAG_BUDGET_DESCRIPTION:Ljava/lang/String; = "bgt:description"

.field public static final TAG_BUDGET_ID:Ljava/lang/String; = "bgt:id"

.field public static final TAG_BUDGET_NAME:Ljava/lang/String; = "bgt:name"

.field public static final TAG_BUDGET_NUM_PERIODS:Ljava/lang/String; = "bgt:num-periods"

.field public static final TAG_BUDGET_RECURRENCE:Ljava/lang/String; = "bgt:recurrence"

.field public static final TAG_BUDGET_SLOTS:Ljava/lang/String; = "bgt:slots"

.field public static final TAG_COMMODITY:Ljava/lang/String; = "gnc:commodity"

.field public static final TAG_COMMODITY_ID:Ljava/lang/String; = "cmdty:id"

.field public static final TAG_COMMODITY_SCU:Ljava/lang/String; = "act:commodity-scu"

.field public static final TAG_COMMODITY_SPACE:Ljava/lang/String; = "cmdty:space"

.field public static final TAG_COUNT_DATA:Ljava/lang/String; = "gnc:count-data"

.field public static final TAG_DATE_ENTERED:Ljava/lang/String; = "trn:date-entered"

.field public static final TAG_DATE_POSTED:Ljava/lang/String; = "trn:date-posted"

.field public static final TAG_GDATE:Ljava/lang/String; = "gdate"

.field public static final TAG_GNC_PREFIX:Ljava/lang/String; = "gnc:"

.field public static final TAG_GNC_RECURRENCE:Ljava/lang/String; = "gnc:recurrence"

.field public static final TAG_PARENT_UID:Ljava/lang/String; = "act:parent"

.field public static final TAG_PRICE:Ljava/lang/String; = "price"

.field public static final TAG_PRICEDB:Ljava/lang/String; = "gnc:pricedb"

.field public static final TAG_PRICE_COMMODITY:Ljava/lang/String; = "price:commodity"

.field public static final TAG_PRICE_CURRENCY:Ljava/lang/String; = "price:currency"

.field public static final TAG_PRICE_ID:Ljava/lang/String; = "price:id"

.field public static final TAG_PRICE_SOURCE:Ljava/lang/String; = "price:source"

.field public static final TAG_PRICE_TIME:Ljava/lang/String; = "price:time"

.field public static final TAG_PRICE_TYPE:Ljava/lang/String; = "price:type"

.field public static final TAG_PRICE_VALUE:Ljava/lang/String; = "price:value"

.field public static final TAG_RECONCILED_DATE:Ljava/lang/String; = "split:recondiled-date"

.field public static final TAG_RECONCILED_STATE:Ljava/lang/String; = "split:reconciled-state"

.field public static final TAG_RECURRENCE_PERIOD:Ljava/lang/String; = "trn:recurrence_period"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ROOT:Ljava/lang/String; = "gnc-v2"

.field public static final TAG_RX_MULT:Ljava/lang/String; = "recurrence:mult"

.field public static final TAG_RX_PERIOD_TYPE:Ljava/lang/String; = "recurrence:period_type"

.field public static final TAG_RX_START:Ljava/lang/String; = "recurrence:start"

.field public static final TAG_SCHEDULED_ACTION:Ljava/lang/String; = "gnc:schedxaction"

.field public static final TAG_SLOT:Ljava/lang/String; = "slot"

.field public static final TAG_SLOT_KEY:Ljava/lang/String; = "slot:key"

.field public static final TAG_SLOT_VALUE:Ljava/lang/String; = "slot:value"

.field public static final TAG_SPLIT_ACCOUNT:Ljava/lang/String; = "split:account"

.field public static final TAG_SPLIT_ID:Ljava/lang/String; = "split:id"

.field public static final TAG_SPLIT_MEMO:Ljava/lang/String; = "split:memo"

.field public static final TAG_SPLIT_QUANTITY:Ljava/lang/String; = "split:quantity"

.field public static final TAG_SPLIT_SLOTS:Ljava/lang/String; = "split:slots"

.field public static final TAG_SPLIT_VALUE:Ljava/lang/String; = "split:value"

.field public static final TAG_SX_ADVANCE_CREATE_DAYS:Ljava/lang/String; = "sx:advanceCreateDays"

.field public static final TAG_SX_ADVANCE_REMIND_DAYS:Ljava/lang/String; = "sx:advanceRemindDays"

.field public static final TAG_SX_AUTO_CREATE:Ljava/lang/String; = "sx:autoCreate"

.field public static final TAG_SX_AUTO_CREATE_NOTIFY:Ljava/lang/String; = "sx:autoCreateNotify"

.field public static final TAG_SX_ENABLED:Ljava/lang/String; = "sx:enabled"

.field public static final TAG_SX_END:Ljava/lang/String; = "sx:end"

.field public static final TAG_SX_ID:Ljava/lang/String; = "sx:id"

.field public static final TAG_SX_INSTANCE_COUNT:Ljava/lang/String; = "sx:instanceCount"

.field public static final TAG_SX_LAST:Ljava/lang/String; = "sx:last"

.field public static final TAG_SX_NAME:Ljava/lang/String; = "sx:name"

.field public static final TAG_SX_NUM_OCCUR:Ljava/lang/String; = "sx:num-occur"

.field public static final TAG_SX_REM_OCCUR:Ljava/lang/String; = "sx:rem-occur"

.field public static final TAG_SX_SCHEDULE:Ljava/lang/String; = "sx:schedule"

.field public static final TAG_SX_START:Ljava/lang/String; = "sx:start"

.field public static final TAG_SX_TAG:Ljava/lang/String; = "sx:tag"

.field public static final TAG_SX_TEMPL_ACCOUNT:Ljava/lang/String; = "sx:templ-acct"

.field public static final TAG_TEMPLATE_TRANSACTIONS:Ljava/lang/String; = "gnc:template-transactions"

.field public static final TAG_TRANSACTION:Ljava/lang/String; = "gnc:transaction"

.field public static final TAG_TRN_DESCRIPTION:Ljava/lang/String; = "trn:description"

.field public static final TAG_TRN_SLOTS:Ljava/lang/String; = "trn:slots"

.field public static final TAG_TRN_SPLIT:Ljava/lang/String; = "trn:split"

.field public static final TAG_TRN_SPLITS:Ljava/lang/String; = "trn:splits"

.field public static final TAG_TRX_CURRENCY:Ljava/lang/String; = "trn:currency"

.field public static final TAG_TRX_ID:Ljava/lang/String; = "trn:id"

.field public static final TAG_TS_DATE:Ljava/lang/String; = "ts:date"

.field public static final TIME_FORMATTER:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/gnucash/android/export/xml/GncXmlHelper;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 151
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/gnucash/android/export/xml/GncXmlHelper;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "milliseconds"    # J

    .prologue
    .line 173
    sget-object v0, Lorg/gnucash/android/export/xml/GncXmlHelper;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSplitAmount(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;
    .locals 6
    .param p0, "amount"    # Ljava/math/BigDecimal;
    .param p1, "commodity"    # Lorg/gnucash/android/model/Commodity;

    .prologue
    .line 217
    invoke-virtual {p1}, Lorg/gnucash/android/model/Commodity;->getSmallestFraction()I

    move-result v1

    .line 218
    .local v1, "denomInt":I
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 219
    .local v0, "denom":Ljava/math/BigDecimal;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "denomString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->stripCurrencyFormatting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "numerator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatTemplateSplitAmount(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .param p0, "amount"    # Ljava/math/BigDecimal;

    .prologue
    .line 234
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v1, Lorg/gnucash/android/export/xml/GncXmlHelper;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 184
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static parseSplitAmount(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 8
    .param p0, "amountString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 195
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "pos":I
    if-gez v2, :cond_0

    .line 198
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse money string : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/lit8 v3, v4, -0x2

    .line 203
    .local v3, "scale":I
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "numerator":Ljava/lang/String;
    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->stripCurrencyFormatting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "numeratorInt":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v4
.end method
