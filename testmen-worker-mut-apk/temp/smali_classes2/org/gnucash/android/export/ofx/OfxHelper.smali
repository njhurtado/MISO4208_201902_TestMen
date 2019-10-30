.class public Lorg/gnucash/android/export/ofx/OfxHelper;
.super Ljava/lang/Object;
.source "OfxHelper.java"


# static fields
.field public static APP_ID:Ljava/lang/String; = null

.field public static final OFX_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final OFX_HEADER:Ljava/lang/String; = "OFXHEADER=\"200\" VERSION=\"211\" SECURITY=\"NONE\" OLDFILEUID=\"NONE\" NEWFILEUID=\"NONE\""

.field public static final OFX_SGML_HEADER:Ljava/lang/String; = "ENCODING:UTF-8\nOFXHEADER:100\nDATA:OFXSGML\nVERSION:211\nSECURITY:NONE\nCHARSET:UTF-8\nCOMPRESSION:NONE\nOLDFILEUID:NONE\nNEWFILEUID:NONE"

.field public static final TAG_ACCOUNT_ID:Ljava/lang/String; = "ACCTID"

.field public static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "ACCTTYPE"

.field public static final TAG_BALANCE_AMOUNT:Ljava/lang/String; = "BALAMT"

.field public static final TAG_BANK_ACCOUNT_FROM:Ljava/lang/String; = "BANKACCTFROM"

.field public static final TAG_BANK_ACCOUNT_TO:Ljava/lang/String; = "BANKACCTTO"

.field public static final TAG_BANK_ID:Ljava/lang/String; = "BANKID"

.field public static final TAG_BANK_MESSAGES_V1:Ljava/lang/String; = "BANKMSGSRSV1"

.field public static final TAG_BANK_TRANSACTION_LIST:Ljava/lang/String; = "BANKTRANLIST"

.field public static final TAG_CURRENCY_DEF:Ljava/lang/String; = "CURDEF"

.field public static final TAG_DATE_AS_OF:Ljava/lang/String; = "DTASOF"

.field public static final TAG_DATE_END:Ljava/lang/String; = "DTEND"

.field public static final TAG_DATE_POSTED:Ljava/lang/String; = "DTPOSTED"

.field public static final TAG_DATE_START:Ljava/lang/String; = "DTSTART"

.field public static final TAG_DATE_USER:Ljava/lang/String; = "DTUSER"

.field public static final TAG_LEDGER_BALANCE:Ljava/lang/String; = "LEDGERBAL"

.field public static final TAG_MEMO:Ljava/lang/String; = "MEMO"

.field public static final TAG_NAME:Ljava/lang/String; = "NAME"

.field public static final TAG_STATEMENT_TRANSACTION:Ljava/lang/String; = "STMTTRN"

.field public static final TAG_STATEMENT_TRANSACTIONS:Ljava/lang/String; = "STMTRS"

.field public static final TAG_STATEMENT_TRANSACTION_RESPONSE:Ljava/lang/String; = "STMTTRNRS"

.field public static final TAG_TRANSACTION_AMOUNT:Ljava/lang/String; = "TRNAMT"

.field public static final TAG_TRANSACTION_FITID:Ljava/lang/String; = "FITID"

.field public static final TAG_TRANSACTION_TYPE:Ljava/lang/String; = "TRNTYPE"

.field public static final TAG_TRANSACTION_UID:Ljava/lang/String; = "TRNUID"

.field public static final UNSOLICITED_TRANSACTION_ID:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/gnucash/android/export/ofx/OfxHelper;->OFX_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 83
    const-string v0, "org.gnucash.android"

    sput-object v0, Lorg/gnucash/android/export/ofx/OfxHelper;->APP_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormattedCurrentTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/gnucash/android/export/ofx/OfxHelper;->getOfxFormattedTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOfxFormattedTime(J)Ljava/lang/String;
    .locals 10
    .param p0, "milliseconds"    # J

    .prologue
    const/4 v8, 0x0

    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 101
    .local v0, "date":Ljava/util/Date;
    sget-object v6, Lorg/gnucash/android/export/ofx/OfxHelper;->OFX_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "dateString":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 103
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 104
    .local v3, "offset":I
    const v6, 0x36ee80

    div-int v6, v3, v6

    rem-int/lit8 v2, v6, 0x18

    .line 105
    .local v2, "hours":I
    if-lez v3, :cond_0

    const-string v4, "+"

    .line 106
    .local v4, "sign":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v5, v8, v8, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 105
    .end local v4    # "sign":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method
