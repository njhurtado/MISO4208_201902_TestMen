.class public Lcom/codetroopers/betterpickers/hmspicker/HmsView;
.super Landroid/widget/LinearLayout;
.source "HmsView.java"


# instance fields
.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mOriginalHoursTypeface:Landroid/graphics/Typeface;

.field private mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 47
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 48
    return-void
.end method

.method private restyleViews()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 84
    :cond_5
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 90
    sget v0, Lcom/codetroopers/betterpickers/R$id;->hours_ones:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 91
    sget v0, Lcom/codetroopers/betterpickers/R$id;->minutes_tens:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 92
    sget v0, Lcom/codetroopers/betterpickers/R$id;->minutes_ones:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 93
    sget v0, Lcom/codetroopers/betterpickers/R$id;->seconds_tens:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 94
    sget v0, Lcom/codetroopers/betterpickers/R$id;->seconds_ones:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 95
    sget v0, Lcom/codetroopers/betterpickers/R$id;->minus_label:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 97
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    .line 99
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 116
    :cond_4
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 56
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 62
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->restyleViews()V

    .line 63
    return-void
.end method

.method public setTime(IIIII)V
    .locals 7
    .param p1, "hoursOnesDigit"    # I
    .param p2, "minutesTensDigit"    # I
    .param p3, "minutesOnesDigit"    # I
    .param p4, "secondsTensDigit"    # I
    .param p5, "secondsOnesDigit"    # I

    .prologue
    .line 129
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->setTime(ZIIIII)V

    .line 130
    return-void
.end method

.method public setTime(ZIIIII)V
    .locals 6
    .param p1, "isNegative"    # Z
    .param p2, "hoursOnesDigit"    # I
    .param p3, "minutesTensDigit"    # I
    .param p4, "minutesOnesDigit"    # I
    .param p5, "secondsTensDigit"    # I
    .param p6, "secondsOnesDigit"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinusLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->mSecondsOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_4
    return-void

    .line 135
    :cond_5
    const/16 v0, 0x8

    goto :goto_0
.end method
