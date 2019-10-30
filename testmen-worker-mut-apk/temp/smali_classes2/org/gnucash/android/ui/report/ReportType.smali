.class public final enum Lorg/gnucash/android/ui/report/ReportType;
.super Ljava/lang/Enum;
.source "ReportType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/ui/report/ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/ui/report/ReportType;

.field public static final enum BAR_CHART:Lorg/gnucash/android/ui/report/ReportType;

.field public static final enum LINE_CHART:Lorg/gnucash/android/ui/report/ReportType;

.field public static final enum NONE:Lorg/gnucash/android/ui/report/ReportType;

.field public static final enum PIE_CHART:Lorg/gnucash/android/ui/report/ReportType;

.field public static final enum TEXT:Lorg/gnucash/android/ui/report/ReportType;


# instance fields
.field mReportTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lorg/gnucash/android/ui/report/ReportType;

    const-string v1, "PIE_CHART"

    invoke-direct {v0, v1, v2, v2}, Lorg/gnucash/android/ui/report/ReportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportType;->PIE_CHART:Lorg/gnucash/android/ui/report/ReportType;

    new-instance v0, Lorg/gnucash/android/ui/report/ReportType;

    const-string v1, "BAR_CHART"

    invoke-direct {v0, v1, v3, v3}, Lorg/gnucash/android/ui/report/ReportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportType;->BAR_CHART:Lorg/gnucash/android/ui/report/ReportType;

    new-instance v0, Lorg/gnucash/android/ui/report/ReportType;

    const-string v1, "LINE_CHART"

    invoke-direct {v0, v1, v4, v4}, Lorg/gnucash/android/ui/report/ReportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportType;->LINE_CHART:Lorg/gnucash/android/ui/report/ReportType;

    new-instance v0, Lorg/gnucash/android/ui/report/ReportType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v5, v5}, Lorg/gnucash/android/ui/report/ReportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportType;->TEXT:Lorg/gnucash/android/ui/report/ReportType;

    new-instance v0, Lorg/gnucash/android/ui/report/ReportType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6, v6}, Lorg/gnucash/android/ui/report/ReportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportType;->NONE:Lorg/gnucash/android/ui/report/ReportType;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/gnucash/android/ui/report/ReportType;

    sget-object v1, Lorg/gnucash/android/ui/report/ReportType;->PIE_CHART:Lorg/gnucash/android/ui/report/ReportType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/gnucash/android/ui/report/ReportType;->BAR_CHART:Lorg/gnucash/android/ui/report/ReportType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/gnucash/android/ui/report/ReportType;->LINE_CHART:Lorg/gnucash/android/ui/report/ReportType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/gnucash/android/ui/report/ReportType;->TEXT:Lorg/gnucash/android/ui/report/ReportType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/gnucash/android/ui/report/ReportType;->NONE:Lorg/gnucash/android/ui/report/ReportType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/gnucash/android/ui/report/ReportType;->$VALUES:[Lorg/gnucash/android/ui/report/ReportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/gnucash/android/ui/report/ReportType;->mReportTypeMap:Ljava/util/Map;

    .line 43
    const/4 v1, 0x4

    iput v1, p0, Lorg/gnucash/android/ui/report/ReportType;->mValue:I

    .line 46
    iput p3, p0, Lorg/gnucash/android/ui/report/ReportType;->mValue:I

    .line 47
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .local v0, "context":Landroid/content/Context;
    packed-switch p3, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportType;->mReportTypeMap:Ljava/util/Map;

    const v2, 0x7f0f01d0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportType;->mReportTypeMap:Ljava/util/Map;

    const v2, 0x7f0f01a9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportType;->mReportTypeMap:Ljava/util/Map;

    const v2, 0x7f0f01ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :pswitch_3
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportType;->mReportTypeMap:Ljava/util/Map;

    const v2, 0x7f0f01a8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/ui/report/ReportType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lorg/gnucash/android/ui/report/ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/report/ReportType;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/ui/report/ReportType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/gnucash/android/ui/report/ReportType;->$VALUES:[Lorg/gnucash/android/ui/report/ReportType;

    invoke-virtual {v0}, [Lorg/gnucash/android/ui/report/ReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/ui/report/ReportType;

    return-object v0
.end method


# virtual methods
.method public getFragment(Ljava/lang/String;)Lorg/gnucash/android/ui/report/BaseReportFragment;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    :try_start_0
    iget-object v3, p0, Lorg/gnucash/android/ui/report/ReportType;->mReportTypeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/gnucash/android/ui/report/BaseReportFragment;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_0
    return-object v2

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public getReportNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportType;->mReportTypeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lorg/gnucash/android/ui/report/ReportType;->mValue:I

    packed-switch v0, :pswitch_data_0

    .line 82
    const v0, 0x7f0600bd

    :goto_0
    return v0

    .line 73
    :pswitch_0
    const v0, 0x7f06001d

    goto :goto_0

    .line 75
    :pswitch_1
    const v0, 0x7f06001f

    goto :goto_0

    .line 77
    :pswitch_2
    const v0, 0x7f06001b

    goto :goto_0

    .line 79
    :pswitch_3
    const v0, 0x7f06001e

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
