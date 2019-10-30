.class public Lcom/codetroopers/betterpickers/datepicker/DateView;
.super Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;
.source "DateView.java"


# instance fields
.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

.field private mOriginalNumberTypeface:Landroid/graphics/Typeface;

.field private mTitleColor:Landroid/content/res/ColorStateList;

.field private mUnderlinePageIndicatorPicker:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

.field private mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/datepicker/DateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mOriginalNumberTypeface:Landroid/graphics/Typeface;

    .line 52
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mTitleColor:Landroid/content/res/ColorStateList;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/datepicker/DateView;->setWillNotDraw(Z)V

    .line 55
    return-void
.end method

.method private restyleViews()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 82
    :cond_2
    return-void
.end method


# virtual methods
.method public getDate()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    return-object v0
.end method

.method public getMonth()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    return-object v0
.end method

.method public getViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/datepicker/DateView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getYear()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mUnderlinePageIndicatorPicker:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    invoke-virtual {v0, p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->setTitleView(Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;)V

    .line 188
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;->onFinishInflate()V

    .line 88
    sget v2, Lcom/codetroopers/betterpickers/R$id;->month:I

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DateView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 89
    sget v2, Lcom/codetroopers/betterpickers/R$id;->date:I

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DateView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 90
    sget v2, Lcom/codetroopers/betterpickers/R$id;->year_label:I

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DateView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iput-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    .line 92
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 93
    .local v0, "dateFormatOrder":[C
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DateView;->removeAllViews()V

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 95
    aget-char v2, v0, v1

    sparse-switch v2, :sswitch_data_0

    .line 94
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :sswitch_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DateView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 100
    :sswitch_1
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DateView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 103
    :sswitch_2
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DateView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v2, :cond_1

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 121
    :cond_3
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DateView;->restyleViews()V

    .line 122
    return-void

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDate(Ljava/lang/String;II)V
    .locals 5
    .param p1, "month"    # Ljava/lang/String;
    .param p2, "dayOfMonth"    # I
    .param p3, "year"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v1, :cond_0

    .line 133
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 145
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v1, :cond_1

    .line 146
    if-gtz p2, :cond_4

    .line 147
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 156
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    if-eqz v1, :cond_2

    .line 157
    if-gtz p3, :cond_5

    .line 158
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v3}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 172
    :cond_2
    :goto_2
    return-void

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mOriginalNumberTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePaddingForBoldDate()V

    goto :goto_0

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    goto :goto_1

    .line 162
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "yearString":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_6

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1, v4}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    goto :goto_2
.end method

.method public setOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "mOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mDate:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mMonth:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mYearLabel:Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 63
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTitleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mTitleColor:Landroid/content/res/ColorStateList;

    .line 69
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DateView;->restyleViews()V

    .line 70
    return-void
.end method

.method public setUnderlinePage(Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;)V
    .locals 0
    .param p1, "indicator"    # Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DateView;->mUnderlinePageIndicatorPicker:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    .line 181
    return-void
.end method
