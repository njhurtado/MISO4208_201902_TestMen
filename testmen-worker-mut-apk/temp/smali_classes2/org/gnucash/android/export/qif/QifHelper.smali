.class public Lorg/gnucash/android/export/qif/QifHelper;
.super Ljava/lang/Object;
.source "QifHelper.java"


# static fields
.field public static final ACCOUNT_HEADER:Ljava/lang/String; = "!Account"

.field public static final ACCOUNT_NAME_PREFIX:Ljava/lang/String; = "N"

.field public static final AMOUNT_PREFIX:Ljava/lang/String; = "T"

.field public static final CATEGORY_PREFIX:Ljava/lang/String; = "L"

.field public static final DATE_PREFIX:Ljava/lang/String; = "D"

.field public static final ENTRY_TERMINATOR:Ljava/lang/String; = "^"

.field public static final INTERNAL_CURRENCY_PREFIX:Ljava/lang/String; = "*"

.field public static final MEMO_PREFIX:Ljava/lang/String; = "M"

.field public static final PAYEE_PREFIX:Ljava/lang/String; = "P"

.field private static final QIF_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final SPLIT_AMOUNT_PREFIX:Ljava/lang/String; = "$"

.field public static final SPLIT_CATEGORY_PREFIX:Ljava/lang/String; = "S"

.field public static final SPLIT_MEMO_PREFIX:Ljava/lang/String; = "E"

.field public static final SPLIT_PERCENTAGE_PREFIX:Ljava/lang/String; = "%"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/M/d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/qif/QifHelper;->QIF_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeMillis"    # J

    .prologue
    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 57
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lorg/gnucash/android/export/qif/QifHelper;->QIF_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getQifHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0}, Lorg/gnucash/android/model/AccountType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    invoke-static {v0}, Lorg/gnucash/android/export/qif/QifHelper;->getQifHeader(Lorg/gnucash/android/model/AccountType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQifHeader(Lorg/gnucash/android/model/AccountType;)Ljava/lang/String;
    .locals 2
    .param p0, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 67
    sget-object v0, Lorg/gnucash/android/export/qif/QifHelper$1;->$SwitchMap$org$gnucash$android$model$AccountType:[I

    invoke-virtual {p0}, Lorg/gnucash/android/model/AccountType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    const-string v0, "!Type:Cash"

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    const-string v0, "!Type:Cash"

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "!Type:Bank"

    goto :goto_0

    .line 73
    :pswitch_2
    const-string v0, "!Type:CCard"

    goto :goto_0

    .line 75
    :pswitch_3
    const-string v0, "!Type:Oth A"

    goto :goto_0

    .line 77
    :pswitch_4
    const-string v0, "!Type:Oth L"

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
