.class public Lorg/gnucash/android/ui/colorpicker/ColorSquare;
.super Landroid/widget/QuickContactBadge;
.source "ColorSquare.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 41
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorSquare;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 43
    .local v0, "colorDrawable":[Landroid/graphics/drawable/Drawable;
    new-instance v1, Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;

    invoke-direct {v1, v0, p1}, Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;-><init>([Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/colorpicker/ColorSquare;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method
