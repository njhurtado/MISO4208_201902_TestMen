.class public Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;
.super Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;
.source "ExpirationView.java"


# instance fields
.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mOriginalNumberTypeface:Landroid/graphics/Typeface;

.field private mSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mTitleColor:Landroid/content/res/ColorStateList;

.field private mUnderlinePageIndicatorPicker:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

.field private mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mOriginalNumberTypeface:Landroid/graphics/Typeface;

    .line 51
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mTitleColor:Landroid/content/res/ColorStateList;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->setWillNotDraw(Z)V

    .line 54
    return-void
.end method

.method private restyleViews()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    :cond_2
    return-void
.end method


# virtual methods
.method public getMonth()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    return-object v0
.end method

.method public getViewAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 188
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 190
    .local v0, "actualIndex":[I
    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 191
    const/4 v1, 0x0

    .line 193
    :goto_0
    return-object v1

    :cond_0
    aget v1, v0, p1

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 188
    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public getYear()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mUnderlinePageIndicatorPicker:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    invoke-virtual {v0, p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->setTitleView(Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;)V

    .line 156
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;->onFinishInflate()V

    .line 87
    sget v0, Lcom/codetroopers/betterpickers/R$id;->month:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 88
    sget v0, Lcom/codetroopers/betterpickers/R$id;->year_label:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 89
    sget v0, Lcom/codetroopers/betterpickers/R$id;->expiration_seperator:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 92
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->restyleViews()V

    .line 104
    return-void
.end method

.method public setExpiration(Ljava/lang/String;I)V
    .locals 5
    .param p1, "month"    # Ljava/lang/String;
    .param p2, "year"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v1, :cond_0

    .line 114
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 124
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v1, :cond_1

    .line 125
    if-gtz p2, :cond_3

    .line 126
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 128
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 140
    :cond_1
    :goto_1
    return-void

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "yearString":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    goto :goto_1
.end method

.method public setOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "mOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 62
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTitleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mTitleColor:Landroid/content/res/ColorStateList;

    .line 68
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->restyleViews()V

    .line 69
    return-void
.end method

.method public setUnderlinePage(Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;)V
    .locals 0
    .param p1, "indicator"    # Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->mUnderlinePageIndicatorPicker:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    .line 149
    return-void
.end method
