.class synthetic Lcom/github/mikephil/charting/renderer/ScatterChartRenderer$1;
.super Ljava/lang/Object;
.source "ScatterChartRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->values()[Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    :try_start_0
    sget-object v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->TRIANGLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CROSS:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
