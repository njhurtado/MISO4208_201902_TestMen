.class public Lcom/codetroopers/betterpickers/numberpicker/NumberView;
.super Landroid/widget/LinearLayout;
.source "NumberView.java"


# instance fields
.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mDecimalSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mOriginalNumberTypeface:Landroid/graphics/Typeface;

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 46
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 47
    return-void
.end method

.method private restyleViews()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimalSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimalSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 77
    :cond_3
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 83
    sget v0, Lcom/codetroopers/betterpickers/R$id;->number:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 84
    sget v0, Lcom/codetroopers/betterpickers/R$id;->decimal:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 85
    sget v0, Lcom/codetroopers/betterpickers/R$id;->decimal_separator:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimalSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 86
    sget v0, Lcom/codetroopers/betterpickers/R$id;->minus_label:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 87
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mOriginalNumberTypeface:Landroid/graphics/Typeface;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->restyleViews()V

    .line 101
    return-void
.end method

.method public setNumber(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "numbersDigit"    # Ljava/lang/String;
    .param p2, "decimalDigit"    # Ljava/lang/String;
    .param p3, "showDecimal"    # Z
    .param p4, "isNegative"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz p4, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 115
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 121
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    .line 138
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 140
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    .line 150
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimalSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimalSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz p3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    .line 154
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 113
    goto :goto_0

    .line 122
    :cond_4
    if-eqz p3, :cond_5

    .line 124
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mOriginalNumberTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    .line 128
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    goto :goto_1

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 135
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mNumber:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 147
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mDecimal:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 152
    goto :goto_3
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 55
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->restyleViews()V

    .line 62
    return-void
.end method
