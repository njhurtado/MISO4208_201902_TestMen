.class public Lorg/gnucash/android/model/Commodity;
.super Lorg/gnucash/android/model/BaseModel;
.source "Commodity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/model/Commodity$Namespace;
    }
.end annotation


# static fields
.field public static AUD:Lorg/gnucash/android/model/Commodity;

.field public static CAD:Lorg/gnucash/android/model/Commodity;

.field public static CHF:Lorg/gnucash/android/model/Commodity;

.field public static DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

.field public static EUR:Lorg/gnucash/android/model/Commodity;

.field public static GBP:Lorg/gnucash/android/model/Commodity;

.field public static JPY:Lorg/gnucash/android/model/Commodity;

.field public static USD:Lorg/gnucash/android/model/Commodity;


# instance fields
.field private mCusip:Ljava/lang/String;

.field private mFullname:Ljava/lang/String;

.field private mLocalSymbol:Ljava/lang/String;

.field private mMnemonic:Ljava/lang/String;

.field private mNamespace:Lorg/gnucash/android/model/Commodity$Namespace;

.field private mQuoteFlag:I

.field private mSmallestFraction:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 36
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    const-string v1, "US Dollars"

    const-string v2, "USD"

    invoke-direct {v0, v1, v2, v4}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    .line 38
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    const-string v1, ""

    const-string v2, "USD"

    invoke-direct {v0, v1, v2, v4}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity;->USD:Lorg/gnucash/android/model/Commodity;

    .line 39
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    const-string v1, ""

    const-string v2, "EUR"

    invoke-direct {v0, v1, v2, v4}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity;->EUR:Lorg/gnucash/android/model/Commodity;

    .line 40
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    const-string v1, ""

    const-string v2, "GBP"

    invoke-direct {v0, v1, v2, v4}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity;->GBP:Lorg/gnucash/android/model/Commodity;

    .line 41
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    const-string v1, ""

    const-string v2, "CHF"

    invoke-direct {v0, v1, v2, v4}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity;->CHF:Lorg/gnucash/android/model/Commodity;

    .line 42
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    const-string v1, ""

    const-string v2, "CAD"

    invoke-direct {v0, v1, v2, v4}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity;->CAD:Lorg/gnucash/android/model/Commodity;

    .line 43
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    const-string v1, ""

    const-string v2, "JPY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity;->JPY:Lorg/gnucash/android/model/Commodity;

    .line 44
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    const-string v1, ""

    const-string v2, "AUD"

    invoke-direct {v0, v1, v2, v4}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity;->AUD:Lorg/gnucash/android/model/Commodity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "fullname"    # Ljava/lang/String;
    .param p2, "mnemonic"    # Ljava/lang/String;
    .param p3, "smallestFraction"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 29
    sget-object v0, Lorg/gnucash/android/model/Commodity$Namespace;->ISO4217:Lorg/gnucash/android/model/Commodity$Namespace;

    iput-object v0, p0, Lorg/gnucash/android/model/Commodity;->mNamespace:Lorg/gnucash/android/model/Commodity$Namespace;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lorg/gnucash/android/model/Commodity;->mLocalSymbol:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/gnucash/android/model/Commodity;->mFullname:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/gnucash/android/model/Commodity;->mMnemonic:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p3}, Lorg/gnucash/android/model/Commodity;->setSmallestFraction(I)V

    .line 66
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;
    .locals 2
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 81
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    :goto_1
    return-object v0

    .line 73
    :sswitch_0
    const-string v1, "USD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "EUR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "GBP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "CHF"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "JPY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "AUD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "CAD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 74
    :pswitch_0
    sget-object v0, Lorg/gnucash/android/model/Commodity;->USD:Lorg/gnucash/android/model/Commodity;

    goto :goto_1

    .line 75
    :pswitch_1
    sget-object v0, Lorg/gnucash/android/model/Commodity;->EUR:Lorg/gnucash/android/model/Commodity;

    goto :goto_1

    .line 76
    :pswitch_2
    sget-object v0, Lorg/gnucash/android/model/Commodity;->GBP:Lorg/gnucash/android/model/Commodity;

    goto :goto_1

    .line 77
    :pswitch_3
    sget-object v0, Lorg/gnucash/android/model/Commodity;->CHF:Lorg/gnucash/android/model/Commodity;

    goto :goto_1

    .line 78
    :pswitch_4
    sget-object v0, Lorg/gnucash/android/model/Commodity;->JPY:Lorg/gnucash/android/model/Commodity;

    goto :goto_1

    .line 79
    :pswitch_5
    sget-object v0, Lorg/gnucash/android/model/Commodity;->AUD:Lorg/gnucash/android/model/Commodity;

    goto :goto_1

    .line 80
    :pswitch_6
    sget-object v0, Lorg/gnucash/android/model/Commodity;->CAD:Lorg/gnucash/android/model/Commodity;

    goto :goto_1

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0xfe90 -> :sswitch_5
        0x103a6 -> :sswitch_6
        0x10481 -> :sswitch_3
        0x10da2 -> :sswitch_1
        0x112d5 -> :sswitch_2
        0x11fd3 -> :sswitch_4
        0x14966 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 210
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    .line 211
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 213
    check-cast v0, Lorg/gnucash/android/model/Commodity;

    .line 215
    .local v0, "commodity":Lorg/gnucash/android/model/Commodity;
    iget-object v1, p0, Lorg/gnucash/android/model/Commodity;->mMnemonic:Ljava/lang/String;

    iget-object v2, v0, Lorg/gnucash/android/model/Commodity;->mMnemonic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/gnucash/android/model/Commodity;->getMnemonic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCusip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mCusip:Ljava/lang/String;

    return-object v0
.end method

.method public getFullname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mFullname:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mLocalSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getMnemonic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mMnemonic:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/gnucash/android/model/Commodity$Namespace;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mNamespace:Lorg/gnucash/android/model/Commodity$Namespace;

    return-object v0
.end method

.method public getQuoteFlag()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/gnucash/android/model/Commodity;->mQuoteFlag:I

    return v0
.end method

.method public getSmallestFraction()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/gnucash/android/model/Commodity;->mSmallestFraction:I

    return v0
.end method

.method public getSmallestFractionDigits()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/gnucash/android/model/Commodity;->mSmallestFraction:I

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/gnucash/android/model/Commodity;->mSmallestFraction:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mLocalSymbol:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mLocalSymbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mMnemonic:Ljava/lang/String;

    .line 143
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mLocalSymbol:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mMnemonic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCusip(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCusip"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/gnucash/android/model/Commodity;->mCusip:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setFullname(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFullname"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/gnucash/android/model/Commodity;->mFullname:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLocalSymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "localSymbol"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/gnucash/android/model/Commodity;->mLocalSymbol:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setMnemonic(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMnemonic"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/gnucash/android/model/Commodity;->mMnemonic:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setNamespace(Lorg/gnucash/android/model/Commodity$Namespace;)V
    .locals 0
    .param p1, "namespace"    # Lorg/gnucash/android/model/Commodity$Namespace;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/gnucash/android/model/Commodity;->mNamespace:Lorg/gnucash/android/model/Commodity$Namespace;

    .line 91
    return-void
.end method

.method public setQuoteFlag(I)V
    .locals 0
    .param p1, "quoteFlag"    # I

    .prologue
    .line 190
    iput p1, p0, Lorg/gnucash/android/model/Commodity;->mQuoteFlag:I

    .line 191
    return-void
.end method

.method public setSmallestFraction(I)V
    .locals 0
    .param p1, "smallestFraction"    # I

    .prologue
    .line 182
    iput p1, p0, Lorg/gnucash/android/model/Commodity;->mSmallestFraction:I

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mFullname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mFullname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mMnemonic:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/model/Commodity;->mFullname:Ljava/lang/String;

    goto :goto_0
.end method
