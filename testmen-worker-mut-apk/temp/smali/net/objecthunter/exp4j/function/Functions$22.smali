.class final Lnet/objecthunter/exp4j/function/Functions$22;
.super Lnet/objecthunter/exp4j/function/Function;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/objecthunter/exp4j/function/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArguments"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lnet/objecthunter/exp4j/function/Function;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public varargs apply([D)D
    .locals 5
    .param p1, "args"    # [D

    .prologue
    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    .line 177
    aget-wide v2, p1, v4

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    .line 178
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 182
    :cond_0
    :goto_0
    return-wide v0

    .line 179
    :cond_1
    aget-wide v2, p1, v4

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    .line 180
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method
