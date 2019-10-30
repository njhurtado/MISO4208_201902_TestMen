.class public Lorg/gnucash/android/ui/colorpicker/HsvColorComparator;
.super Ljava/lang/Object;
.source "HsvColorComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 9
    .param p1, "lhs"    # Ljava/lang/Integer;
    .param p2, "rhs"    # Ljava/lang/Integer;

    .prologue
    .line 30
    const/4 v8, 0x3

    new-array v0, v8, [F

    .line 31
    .local v0, "hsv":[F
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 32
    const/4 v8, 0x0

    aget v2, v0, v8

    .line 33
    .local v2, "hue1":F
    const/4 v8, 0x1

    aget v4, v0, v8

    .line 34
    .local v4, "sat1":F
    const/4 v8, 0x2

    aget v6, v0, v8

    .line 36
    .local v6, "val1":F
    const/4 v8, 0x3

    new-array v1, v8, [F

    .line 37
    .local v1, "hsv2":[F
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 38
    const/4 v8, 0x0

    aget v3, v1, v8

    .line 39
    .local v3, "hue2":F
    const/4 v8, 0x1

    aget v5, v1, v8

    .line 40
    .local v5, "sat2":F
    const/4 v8, 0x2

    aget v7, v1, v8

    .line 42
    .local v7, "val2":F
    cmpg-float v8, v2, v3

    if-gez v8, :cond_0

    .line 43
    const/4 v8, 0x1

    .line 59
    :goto_0
    return v8

    .line 44
    :cond_0
    cmpl-float v8, v2, v3

    if-lez v8, :cond_1

    .line 45
    const/4 v8, -0x1

    goto :goto_0

    .line 47
    :cond_1
    cmpg-float v8, v4, v5

    if-gez v8, :cond_2

    .line 48
    const/4 v8, 0x1

    goto :goto_0

    .line 49
    :cond_2
    cmpl-float v8, v4, v5

    if-lez v8, :cond_3

    .line 50
    const/4 v8, -0x1

    goto :goto_0

    .line 52
    :cond_3
    cmpg-float v8, v6, v7

    if-gez v8, :cond_4

    .line 53
    const/4 v8, 0x1

    goto :goto_0

    .line 54
    :cond_4
    cmpl-float v8, v6, v7

    if-lez v8, :cond_5

    .line 55
    const/4 v8, -0x1

    goto :goto_0

    .line 59
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/colorpicker/HsvColorComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
