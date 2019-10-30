.class public Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;
.super Landroid/widget/TableLayout;
.source "ColorPickerPalette.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDescriptionSelected:Ljava/lang/String;

.field private mMarginSize:I

.field private mNumColumns:I

.field public mOnColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mSwatchLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V
    .locals 1
    .param p1, "row"    # Landroid/widget/TableRow;
    .param p2, "swatch"    # Landroid/view/View;
    .param p3, "rowNumber"    # I

    .prologue
    .line 130
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private createBlankSpace()Landroid/widget/ImageView;
    .locals 6

    .prologue
    .line 168
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, "view":Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    iget v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mSwatchLength:I

    iget v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mSwatchLength:I

    invoke-direct {v0, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 170
    .local v0, "params":Landroid/widget/TableRow$LayoutParams;
    iget v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v4, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v5, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 171
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-object v1
.end method

.method private createColorSwatch(II)Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;
    .locals 6
    .param p1, "color"    # I
    .param p2, "selectedColor"    # I

    .prologue
    .line 179
    new-instance v1, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne p1, p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v4, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mOnColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-direct {v1, v3, p1, v2, v4}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;-><init>(Landroid/content/Context;IZLorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 181
    .local v1, "view":Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    iget v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mSwatchLength:I

    iget v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mSwatchLength:I

    invoke-direct {v0, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 182
    .local v0, "params":Landroid/widget/TableRow$LayoutParams;
    iget v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v4, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v5, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 183
    invoke-virtual {v1, v0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-object v1

    .line 179
    .end local v0    # "params":Landroid/widget/TableRow$LayoutParams;
    .end local v1    # "view":Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createTableRow()Landroid/widget/TableRow;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 76
    new-instance v1, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "row":Landroid/widget/TableRow;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 79
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-object v1
.end method

.method private setSwatchDescription(IIIZLandroid/view/View;)V
    .locals 7
    .param p1, "rowNumber"    # I
    .param p2, "index"    # I
    .param p3, "rowElements"    # I
    .param p4, "selected"    # Z
    .param p5, "swatch"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 146
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_0

    .line 148
    move v0, p2

    .line 156
    .local v0, "accessibilityIndex":I
    :goto_0
    if-eqz p4, :cond_1

    .line 157
    iget-object v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mDescriptionSelected:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "description":Ljava/lang/String;
    :goto_1
    invoke-virtual {p5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    return-void

    .line 151
    .end local v0    # "accessibilityIndex":I
    .end local v1    # "description":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mNumColumns:I

    mul-int v2, v3, v4

    .line 152
    .local v2, "rowMax":I
    sub-int v0, v2, p3

    .restart local v0    # "accessibilityIndex":I
    goto :goto_0

    .line 159
    .end local v2    # "rowMax":I
    :cond_1
    iget-object v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mDescription:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public drawPalette([II)V
    .locals 11
    .param p1, "colors"    # [I
    .param p2, "selectedColor"    # I

    .prologue
    const/4 v8, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->removeAllViews()V

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "tableElements":I
    const/4 v3, 0x0

    .line 94
    .local v3, "rowElements":I
    const/4 v1, 0x0

    .line 97
    .local v1, "rowNumber":I
    invoke-direct {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->createTableRow()Landroid/widget/TableRow;

    move-result-object v7

    .line 98
    .local v7, "row":Landroid/widget/TableRow;
    array-length v10, p1

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_4

    aget v6, p1, v9

    .line 99
    .local v6, "color":I
    add-int/lit8 v2, v2, 0x1

    .line 101
    invoke-direct {p0, v6, p2}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->createColorSwatch(II)Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch;

    move-result-object v5

    .line 102
    .local v5, "colorSwatch":Landroid/view/View;
    if-ne v6, p2, :cond_3

    const/4 v4, 0x1

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->setSwatchDescription(IIIZLandroid/view/View;)V

    .line 104
    invoke-direct {p0, v7, v5, v1}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    iget v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mNumColumns:I

    if-ne v3, v0, :cond_2

    .line 108
    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->addView(Landroid/view/View;)V

    .line 109
    invoke-direct {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->createTableRow()Landroid/widget/TableRow;

    move-result-object v7

    .line 110
    const/4 v3, 0x0

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 98
    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    move v4, v8

    .line 102
    goto :goto_2

    .line 116
    .end local v5    # "colorSwatch":Landroid/view/View;
    .end local v6    # "color":I
    :cond_4
    if-lez v3, :cond_0

    .line 117
    :goto_3
    iget v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mNumColumns:I

    if-eq v3, v0, :cond_5

    .line 118
    invoke-direct {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->createBlankSpace()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v7, v0, v1}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 121
    :cond_5
    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public init(IILorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "columns"    # I
    .param p3, "listener"    # Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .prologue
    .line 60
    iput p2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mNumColumns:I

    .line 61
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 63
    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mSwatchLength:I

    .line 64
    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    .line 69
    :goto_0
    iput-object p3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mOnColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 71
    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mDescription:Ljava/lang/String;

    .line 72
    const v1, 0x7f0f003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mDescriptionSelected:Ljava/lang/String;

    .line 73
    return-void

    .line 66
    :cond_0
    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mSwatchLength:I

    .line 67
    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->mMarginSize:I

    goto :goto_0
.end method
