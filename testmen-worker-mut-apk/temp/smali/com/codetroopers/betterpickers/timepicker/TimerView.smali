.class public Lcom/codetroopers/betterpickers/timepicker/TimerView;
.super Landroid/widget/LinearLayout;
.source "TimerView.java"


# instance fields
.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mHoursSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mOriginalHoursTypeface:Landroid/graphics/Typeface;

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 46
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 47
    return-void
.end method

.method private restyleViews()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    :cond_4
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 86
    sget v0, Lcom/codetroopers/betterpickers/R$id;->hours_tens:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 87
    sget v0, Lcom/codetroopers/betterpickers/R$id;->minutes_tens:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 88
    sget v0, Lcom/codetroopers/betterpickers/R$id;->hours_ones:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 89
    sget v0, Lcom/codetroopers/betterpickers/R$id;->minutes_ones:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 90
    sget v0, Lcom/codetroopers/betterpickers/R$id;->hours_seperator:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursSeperator:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 91
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 103
    :cond_2
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 55
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->restyleViews()V

    .line 62
    return-void
.end method

.method public setTime(IIII)V
    .locals 7
    .param p1, "hoursTensDigit"    # I
    .param p2, "hoursOnesDigit"    # I
    .param p3, "minutesTensDigit"    # I
    .param p4, "minutesOnesDigit"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 134
    if-ne p2, v6, :cond_6

    .line 135
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 146
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 147
    if-ne p3, v6, :cond_7

    .line 148
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 155
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_3

    .line 156
    if-ne p4, v6, :cond_8

    .line 157
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 164
    :cond_3
    :goto_3
    return-void

    .line 119
    :cond_4
    if-ne p1, v6, :cond_5

    .line 120
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 124
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v5}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    .line 130
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v5}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mHoursOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    goto/16 :goto_1

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v5}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesTens:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimerView;->mMinutesOnes:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, v5}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    goto/16 :goto_3
.end method
