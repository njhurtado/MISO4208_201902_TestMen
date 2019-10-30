.class public final enum Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
.super Ljava/lang/Enum;
.source "LimitLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/LimitLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LimitLabelPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field public static final enum POS_LEFT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field public static final enum POS_RIGHT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    const-string v1, "POS_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->POS_LEFT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    new-instance v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    const-string v1, "POS_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->POS_RIGHT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    sget-object v1, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->POS_LEFT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->POS_RIGHT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->$VALUES:[Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    return-object v0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->$VALUES:[Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    return-object v0
.end method
