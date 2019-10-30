.class public Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ColorStateDrawable.java"


# static fields
.field private static final PRESSED_STATE_MULTIPLIER:F = 0.7f


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 36
    iput p2, p0, Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;->mColor:I

    .line 37
    return-void
.end method

.method private getPressedColor(I)I
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x2

    .line 62
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 63
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 64
    aget v1, v0, v3

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 65
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "states"    # [I

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "pressedOrFocused":Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 43
    .local v1, "state":I
    const v4, 0x10100a7

    if-eq v1, v4, :cond_0

    const v4, 0x101009c

    if-ne v1, v4, :cond_2

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 49
    .end local v1    # "state":I
    :cond_1
    if-eqz v0, :cond_3

    .line 50
    iget v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;->mColor:I

    invoke-direct {p0, v2}, Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;->getPressedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v2

    return v2

    .line 42
    .restart local v1    # "state":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "state":I
    :cond_3
    iget v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;->mColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method
