.class public Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;
.super Landroid/widget/FrameLayout;
.source "ColorPickerSwatch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;
    }
.end annotation


# instance fields
.field private mCheckmarkImage:Landroid/widget/ImageView;

.field private mColor:I

.field private mOnColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mSwatchImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "checked"    # Z
    .param p4, "listener"    # Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput p2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mColor:I

    .line 53
    iput-object p4, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0033

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p0, p2}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->setColor(I)V

    .line 59
    invoke-direct {p0, p3}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->setChecked(Z)V

    .line 60
    invoke-virtual {p0, p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    iget v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mColor:I

    invoke-interface {v0, v1}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected setColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 64
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    .local v0, "colorDrawable":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    new-instance v2, Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;

    invoke-direct {v2, v0, p1}, Lorg/gnucash/android/ui/colorpicker/ColorStateDrawable;-><init>([Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method
