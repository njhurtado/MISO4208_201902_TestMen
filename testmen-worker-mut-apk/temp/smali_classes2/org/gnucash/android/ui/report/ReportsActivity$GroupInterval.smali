.class public final enum Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;
.super Ljava/lang/Enum;
.source "ReportsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/report/ReportsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupInterval"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

.field public static final enum ALL:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

.field public static final enum MONTH:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

.field public static final enum QUARTER:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

.field public static final enum WEEK:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

.field public static final enum YEAR:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    const-string v1, "WEEK"

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->WEEK:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    new-instance v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    const-string v1, "MONTH"

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->MONTH:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    new-instance v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    const-string v1, "QUARTER"

    invoke-direct {v0, v1, v4}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->QUARTER:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    new-instance v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    const-string v1, "YEAR"

    invoke-direct {v0, v1, v5}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->YEAR:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    new-instance v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v6}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->ALL:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    sget-object v1, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->WEEK:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    aput-object v1, v0, v2

    sget-object v1, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->MONTH:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    aput-object v1, v0, v3

    sget-object v1, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->QUARTER:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    aput-object v1, v0, v4

    sget-object v1, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->YEAR:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    aput-object v1, v0, v5

    sget-object v1, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->ALL:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    aput-object v1, v0, v6

    sput-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->$VALUES:[Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->$VALUES:[Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    invoke-virtual {v0}, [Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    return-object v0
.end method
