.class public Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;
    }
.end annotation


# static fields
.field private static final CLICKED_DECIMAL:I = 0xa

.field public static final SIGN_NEGATIVE:I = 0x1

.field public static final SIGN_POSITIVE:I


# instance fields
.field private mButtonBackgroundResId:I

.field protected final mContext:Landroid/content/Context;

.field protected mDelete:Landroid/widget/ImageButton;

.field private mDeleteDrawableSrcResId:I

.field protected mDivider:Landroid/view/View;

.field private mDividerColor:I

.field protected mEnteredNumber:Lcom/codetroopers/betterpickers/numberpicker/NumberView;

.field private mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

.field protected mInput:[I

.field protected mInputPointer:I

.field protected mInputSize:I

.field private mKeyBackgroundResId:I

.field private mLabel:Landroid/widget/TextView;

.field private mLabelText:Ljava/lang/String;

.field protected mLeft:Landroid/widget/Button;

.field private mMaxNumber:Ljava/math/BigDecimal;

.field private mMinNumber:Ljava/math/BigDecimal;

.field protected final mNumbers:[Landroid/widget/Button;

.field protected mRight:Landroid/widget/Button;

.field private mSetButton:Landroid/widget/Button;

.field private mSign:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v1, 0x14

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputSize:I

    .line 29
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    .line 30
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    .line 31
    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLabelText:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTheme:I

    .line 55
    iput-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mMinNumber:Ljava/math/BigDecimal;

    .line 56
    iput-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mMaxNumber:Ljava/math/BigDecimal;

    .line 75
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    .line 76
    const-string v1, "layout_inflater"

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 82
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->key_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mKeyBackgroundResId:I

    .line 83
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->button_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mButtonBackgroundResId:I

    .line 84
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->ic_backspace_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDeleteDrawableSrcResId:I

    .line 85
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->default_divider_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDividerColor:I

    .line 86
    return-void
.end method

.method private addClickedNumber(I)V
    .locals 5
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    .line 370
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aget v1, v1, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->containsDecimal()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aput p1, v1, v4

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 376
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 375
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 378
    :cond_2
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .line 379
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aput p1, v1, v4

    goto :goto_0
.end method

.method private canAddDecimal()Z
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->containsDecimal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsDecimal()Z
    .locals 6

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "containsDecimal":Z
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    .line 407
    .local v1, "i":I
    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    .line 408
    const/4 v0, 0x1

    .line 406
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private doubleToString(D)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 586
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, "format":Ljava/text/DecimalFormat;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 588
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private enableSetButton()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSetButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 473
    :cond_0
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 474
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSetButton:Landroid/widget/Button;

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    if-ltz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getEnteredNumberString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 424
    const-string v1, ""

    .line 425
    .local v1, "value":Ljava/lang/String;
    iget v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 426
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 425
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aget v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 431
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 434
    :cond_2
    return-object v1
.end method

.method private onLeftClicked()V
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x1

    iput v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    goto :goto_0
.end method

.method private onRightClicked()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->canAddDecimal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->addClickedNumber(I)V

    .line 402
    :cond_0
    return-void
.end method

.method private readAndRightDigits(Ljava/lang/String;)V
    .locals 4
    .param p1, "digitsToRead"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 573
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .line 574
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aput v3, v1, v2

    .line 572
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method

.method private restyleViews()V
    .locals 5

    .prologue
    .line 113
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 114
    .local v0, "number":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 115
    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    iget v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "number":Landroid/widget/Button;
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDivider:Landroid/view/View;

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    .line 131
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mButtonBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 132
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_5
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mEnteredNumber:Lcom/codetroopers/betterpickers/numberpicker/NumberView;

    if-eqz v1, :cond_6

    .line 135
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mEnteredNumber:Lcom/codetroopers/betterpickers/numberpicker/NumberView;

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTheme:I

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->setTheme(I)V

    .line 137
    :cond_6
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 138
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 140
    :cond_7
    return-void
.end method

.method private showLabel()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_0
    return-void
.end method

.method private updateKeypad()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateLeftRightButtons()V

    .line 306
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateNumber()V

    .line 308
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->enableSetButton()V

    .line 310
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateDeleteButton()V

    .line 311
    return-void
.end method

.method private updateLeftRightButtons()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->canAddDecimal()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 462
    return-void
.end method


# virtual methods
.method protected doOnClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    sget v2, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 270
    .local v1, "val":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->addClickedNumber(I)V

    .line 286
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateKeypad()V

    .line 287
    return-void

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_3

    .line 274
    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    if-ltz v2, :cond_0

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    if-ge v0, v2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    iget v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 279
    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    goto :goto_0

    .line 281
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    .line 282
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->onLeftClicked()V

    goto :goto_0

    .line 283
    :cond_4
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->onRightClicked()V

    goto :goto_0
.end method

.method public getDecimal()D
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getEnteredNumber()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEnteredNumber()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 443
    const-string v1, "0"

    .line 444
    .local v1, "value":Ljava/lang/String;
    iget v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 445
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 453
    :cond_0
    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    :cond_1
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 447
    :cond_2
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aget v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 450
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getErrorView()Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    return-object v0
.end method

.method public getIsNegative()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 517
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/codetroopers/betterpickers/R$layout;->number_picker_view:I

    return v0
.end method

.method public getNumber()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getEnteredNumber()Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 499
    .local v0, "bigDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 263
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideImmediately()V

    .line 264
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->doOnClick(Landroid/view/View;)V

    .line 265
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateDeleteButton()V

    .line 266
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 144
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 146
    sget v6, Lcom/codetroopers/betterpickers/R$id;->divider:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDivider:Landroid/view/View;

    .line 147
    sget v6, Lcom/codetroopers/betterpickers/R$id;->error:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 150
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    const/4 v7, -0x1

    aput v7, v6, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    sget v6, Lcom/codetroopers/betterpickers/R$id;->first:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 154
    .local v2, "v1":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->second:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 155
    .local v3, "v2":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->third:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 156
    .local v4, "v3":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->fourth:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 157
    .local v5, "v4":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->number_text:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/codetroopers/betterpickers/numberpicker/NumberView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mEnteredNumber:Lcom/codetroopers/betterpickers/numberpicker/NumberView;

    .line 158
    sget v6, Lcom/codetroopers/betterpickers/R$id;->delete:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    .line 159
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v11

    .line 163
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x2

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 164
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x3

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 166
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x4

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 167
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x5

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 168
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x6

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 170
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x7

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 171
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    const/16 v8, 0x8

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 172
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    const/16 v8, 0x9

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 174
    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    .line 175
    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v10

    .line 176
    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    .line 177
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setLeftRightEnabled()V

    .line 179
    const/4 v0, 0x0

    :goto_1
    const/16 v6, 0xa

    if-ge v0, v6, :cond_1

    .line 180
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    const-string v7, "%d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    sget v7, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateNumber()V

    .line 186
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    sget v7, Lcom/codetroopers/betterpickers/R$string;->number_picker_plus_minus:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    sget v7, Lcom/codetroopers/betterpickers/R$string;->number_picker_seperator:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget v6, Lcom/codetroopers/betterpickers/R$id;->label:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLabel:Landroid/widget/TextView;

    .line 192
    iput v10, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    .line 195
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->showLabel()V

    .line 197
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->restyleViews()V

    .line 198
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateKeypad()V

    .line 199
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 292
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideImmediately()V

    .line 293
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->reset()V

    .line 296
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateKeypad()V

    .line 297
    const/4 v0, 0x1

    .line 299
    :cond_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 532
    instance-of v1, p1, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;

    if-nez v1, :cond_0

    .line 533
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 548
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 537
    check-cast v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;

    .line 538
    .local v0, "savedState":Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;
    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 540
    iget v1, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInputPointer:I

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .line 541
    iget-object v1, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInput:[I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    .line 542
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    if-nez v1, :cond_1

    .line 543
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    .line 544
    const/4 v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .line 546
    :cond_1
    iget v1, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mSign:I

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    .line 547
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateKeypad()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 522
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 523
    .local v0, "parcel":Landroid/os/Parcelable;
    new-instance v1, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 524
    .local v1, "state":Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    iput-object v2, v1, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInput:[I

    .line 525
    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    iput v2, v1, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mSign:I

    .line 526
    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    iput v2, v1, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInputPointer:I

    .line 527
    return-object v1
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputSize:I

    if-ge v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    aput v2, v1, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .line 337
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateNumber()V

    .line 338
    return-void
.end method

.method public setDecimalVisibility(I)V
    .locals 1
    .param p1, "visiblity"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    :cond_0
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelText"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLabelText:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->showLabel()V

    .line 321
    return-void
.end method

.method protected setLeftRightEnabled()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->canAddDecimal()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->canAddDecimal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mRight:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 367
    :cond_0
    return-void
.end method

.method public setMax(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "max"    # Ljava/math/BigDecimal;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mMaxNumber:Ljava/math/BigDecimal;

    .line 239
    return-void
.end method

.method public setMin(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "min"    # Ljava/math/BigDecimal;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mMinNumber:Ljava/math/BigDecimal;

    .line 230
    return-void
.end method

.method public setNumber(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "integerPart"    # Ljava/lang/Integer;
    .param p2, "decimalPart"    # Ljava/lang/Double;
    .param p3, "mCurrentSign"    # Ljava/lang/Integer;

    .prologue
    .line 551
    if-eqz p3, :cond_2

    .line 552
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    .line 557
    :goto_0
    if-eqz p2, :cond_0

    .line 558
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "decimalString":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->readAndRightDigits(Ljava/lang/String;)V

    .line 561
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    .line 562
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInput:[I

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    const/16 v3, 0xa

    aput v3, v1, v2

    .line 565
    .end local v0    # "decimalString":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 566
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->readAndRightDigits(Ljava/lang/String;)V

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->updateKeypad()V

    .line 569
    return-void

    .line 554
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    goto :goto_0
.end method

.method public setPlusMinusVisibility(I)V
    .locals 1
    .param p1, "visiblity"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public setSetButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "b"    # Landroid/widget/Button;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSetButton:Landroid/widget/Button;

    .line 489
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->enableSetButton()V

    .line 490
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTheme:I

    .line 99
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTheme:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 103
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpKeyBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mKeyBackgroundResId:I

    .line 104
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpButtonBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mButtonBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mButtonBackgroundResId:I

    .line 105
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDividerColor:I

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDividerColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDividerColor:I

    .line 106
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDeleteIcon:I

    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDeleteDrawableSrcResId:I

    .line 109
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->restyleViews()V

    .line 110
    return-void
.end method

.method public updateDeleteButton()V
    .locals 3

    .prologue
    .line 245
    iget v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mInputPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 246
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 249
    :cond_0
    return-void

    .line 245
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateNumber()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 342
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getEnteredNumberString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "numberString":Ljava/lang/String;
    const-string v4, "\\-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "split":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 346
    aget-object v4, v1, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mEnteredNumber:Lcom/codetroopers/betterpickers/numberpicker/NumberView;

    const-string v5, "0"

    aget-object v6, v1, v2

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->containsDecimal()Z

    move-result v7

    iget v8, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    if-ne v8, v2, :cond_1

    :goto_0
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->setNumber(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 359
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 347
    goto :goto_0

    .line 350
    :cond_2
    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mEnteredNumber:Lcom/codetroopers/betterpickers/numberpicker/NumberView;

    aget-object v5, v1, v3

    aget-object v6, v1, v2

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->containsDecimal()Z

    move-result v7

    iget v8, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    if-ne v8, v2, :cond_3

    :goto_2
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->setNumber(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 353
    :cond_4
    array-length v4, v1

    if-ne v4, v2, :cond_6

    .line 354
    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mEnteredNumber:Lcom/codetroopers/betterpickers/numberpicker/NumberView;

    aget-object v5, v1, v3

    const-string v6, ""

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->containsDecimal()Z

    move-result v7

    iget v8, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    if-ne v8, v2, :cond_5

    :goto_3
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->setNumber(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_3

    .line 356
    :cond_6
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mEnteredNumber:Lcom/codetroopers/betterpickers/numberpicker/NumberView;

    const-string v5, "0"

    const-string v6, ""

    iget v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->mSign:I

    if-ne v7, v2, :cond_7

    move v3, v2

    :cond_7
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/codetroopers/betterpickers/numberpicker/NumberView;->setNumber(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1
.end method
