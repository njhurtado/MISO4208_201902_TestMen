.class final Lnet/objecthunter/exp4j/function/Functions$2;
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
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lnet/objecthunter/exp4j/function/Function;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs apply([D)D
    .locals 2
    .param p1, "args"    # [D

    .prologue
    .line 57
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method
