.class public Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;
.super Landroid/widget/LinearLayout;
.source "HmsPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;
    }
.end annotation


# static fields
.field public static final SIGN_NEGATIVE:I = 0x1

.field public static final SIGN_POSITIVE:I


# instance fields
.field private mButtonBackgroundResId:I

.field protected final mContext:Landroid/content/Context;

.field protected mDelete:Landroid/widget/ImageButton;

.field private mDeleteDrawableSrcResId:I

.field protected mDivider:Landroid/view/View;

.field private mDividerColor:I

.field protected mEnteredHms:Lcom/codetroopers/betterpickers/hmspicker/HmsView;

.field private mHoursLabel:Landroid/widget/TextView;

.field protected mInput:[I

.field protected mInputPointer:I

.field protected mInputSize:I

.field private mKeyBackgroundResId:I

.field protected mLeft:Landroid/widget/Button;

.field private mMinutesLabel:Landroid/widget/TextView;

.field protected final mNumbers:[Landroid/widget/Button;

.field protected mRight:Landroid/widget/Button;

.field private mSecondsLabel:Landroid/widget/TextView;

.field private mSetButton:Landroid/widget/Button;

.field private mSign:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v1, 0x5

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputSize:I

    .line 25
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    .line 26
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    .line 27
    iput v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    .line 42
    iput v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTheme:I

    .line 65
    iput-object p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mContext:Landroid/content/Context;

    .line 66
    const-string v1, "layout_inflater"

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 72
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->key_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mKeyBackgroundResId:I

    .line 73
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->button_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mButtonBackgroundResId:I

    .line 74
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->default_divider_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDividerColor:I

    .line 75
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->ic_backspace_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDeleteDrawableSrcResId:I

    .line 76
    return-void
.end method

.method private addClickedNumber(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 279
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_2

    .line 280
    :cond_0
    iget v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 281
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 280
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 283
    :cond_1
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    .line 284
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 286
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private enableSetButton()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSetButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 297
    :cond_0
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 298
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSetButton:Landroid/widget/Button;

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    if-ltz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private onLeftClicked()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSign:I

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSign:I

    goto :goto_0
.end method

.method private restyleViews()V
    .locals 5

    .prologue
    .line 105
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 106
    .local v0, "number":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 107
    iget-object v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 108
    iget v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "number":Landroid/widget/Button;
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDivider:Landroid/view/View;

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mHoursLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mHoursLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mHoursLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mMinutesLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mMinutesLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mMinutesLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSecondsLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSecondsLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSecondsLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 126
    :cond_5
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    .line 127
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mButtonBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 128
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mEnteredHms:Lcom/codetroopers/betterpickers/hmspicker/HmsView;

    if-eqz v1, :cond_7

    .line 131
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mEnteredHms:Lcom/codetroopers/betterpickers/hmspicker/HmsView;

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTheme:I

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->setTheme(I)V

    .line 133
    :cond_7
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    if-eqz v1, :cond_8

    .line 134
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 135
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 137
    :cond_8
    return-void
.end method

.method private updateKeypad()V
    .locals 0

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateHms()V

    .line 261
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->enableSetButton()V

    .line 263
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateDeleteButton()V

    .line 265
    return-void
.end method


# virtual methods
.method protected doOnClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    sget v2, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 209
    .local v1, "val":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->addClickedNumber(I)V

    .line 222
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateKeypad()V

    .line 223
    return-void

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_3

    .line 212
    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    if-ltz v2, :cond_0

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    if-ge v0, v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    iget v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 217
    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->onLeftClicked()V

    goto :goto_0
.end method

.method public getHours()I
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x4

    aget v0, v1, v2

    .line 322
    .local v0, "hours":I
    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/codetroopers/betterpickers/R$layout;->hms_picker_view:I

    return v0
.end method

.method public getMinutes()I
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getSeconds()I
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTime()I
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0xe10

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x258

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 478
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSign:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 202
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->doOnClick(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateDeleteButton()V

    .line 204
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 143
    sget v6, Lcom/codetroopers/betterpickers/R$id;->first:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 144
    .local v2, "v1":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->second:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 145
    .local v3, "v2":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->third:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 146
    .local v4, "v3":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->fourth:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 147
    .local v5, "v4":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->hms_text:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/codetroopers/betterpickers/hmspicker/HmsView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mEnteredHms:Lcom/codetroopers/betterpickers/hmspicker/HmsView;

    .line 148
    sget v6, Lcom/codetroopers/betterpickers/R$id;->delete:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    .line 149
    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 152
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v11

    .line 153
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x2

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 154
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x3

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 156
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x4

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 157
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x5

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 158
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x6

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 160
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x7

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 161
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    const/16 v8, 0x8

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 162
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    const/16 v8, 0x9

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 164
    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    .line 165
    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v10

    .line 166
    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mRight:Landroid/widget/Button;

    .line 167
    invoke-virtual {p0, v10}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->setRightEnabled(Z)V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v0, v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    const-string v7, "%d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    sget v7, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateHms()V

    .line 176
    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    sget v7, Lcom/codetroopers/betterpickers/R$string;->number_picker_plus_minus:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget v6, Lcom/codetroopers/betterpickers/R$id;->hours_label:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mHoursLabel:Landroid/widget/TextView;

    .line 181
    sget v6, Lcom/codetroopers/betterpickers/R$id;->minutes_label:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mMinutesLabel:Landroid/widget/TextView;

    .line 182
    sget v6, Lcom/codetroopers/betterpickers/R$id;->seconds_label:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSecondsLabel:Landroid/widget/TextView;

    .line 183
    sget v6, Lcom/codetroopers/betterpickers/R$id;->divider:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDivider:Landroid/view/View;

    .line 185
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->restyleViews()V

    .line 186
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateKeypad()V

    .line 187
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 236
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->reset()V

    .line 240
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateKeypad()V

    .line 241
    const/4 v0, 0x1

    .line 243
    :cond_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 390
    instance-of v1, p1, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;

    if-nez v1, :cond_0

    .line 391
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 395
    check-cast v0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;

    .line 396
    .local v0, "savedState":Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;
    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 398
    iget v1, v0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mInputPointer:I

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    .line 399
    iget-object v1, v0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mInput:[I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    .line 400
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    if-nez v1, :cond_1

    .line 401
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    .line 402
    const/4 v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateKeypad()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 381
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 382
    .local v0, "parcel":Landroid/os/Parcelable;
    new-instance v1, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 383
    .local v1, "state":Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    iput-object v2, v1, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mInput:[I

    .line 384
    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    iput v2, v1, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mInputPointer:I

    .line 385
    return-object v1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputSize:I

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    .line 254
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateHms()V

    .line 255
    return-void
.end method

.method public restoreEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 459
    .local v1, "input":[I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputSize:I

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputSize:I

    if-ge v0, v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    aget v3, v1, v0

    aput v3, v2, v0

    .line 462
    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 463
    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    .line 460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateHms()V

    .line 468
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public saveEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 455
    return-void
.end method

.method public setPlusMinusVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    :cond_0
    return-void
.end method

.method protected setRightEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 471
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    if-nez p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mRight:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 475
    :cond_0
    return-void
.end method

.method public setSetButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "b"    # Landroid/widget/Button;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mSetButton:Landroid/widget/Button;

    .line 312
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->enableSetButton()V

    .line 313
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTheme:I

    .line 89
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTheme:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 92
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpKeyBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mKeyBackgroundResId:I

    .line 94
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpButtonBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mButtonBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mButtonBackgroundResId:I

    .line 96
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDividerColor:I

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDividerColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDividerColor:I

    .line 97
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDeleteIcon:I

    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDeleteDrawableSrcResId:I

    .line 101
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->restyleViews()V

    .line 102
    return-void
.end method

.method public setTime(III)V
    .locals 4
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I

    .prologue
    .line 362
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x4

    aput p1, v1, v2

    .line 363
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x3

    div-int/lit8 v3, p2, 0xa

    aput v3, v1, v2

    .line 364
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x2

    rem-int/lit8 v3, p2, 0xa

    aput v3, v1, v2

    .line 365
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x1

    div-int/lit8 v3, p3, 0xa

    aput v3, v1, v2

    .line 366
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v2, 0x0

    rem-int/lit8 v3, p3, 0xa

    aput v3, v1, v2

    .line 368
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    aget v1, v1, v0

    if-lez v1, :cond_1

    .line 370
    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->updateKeypad()V

    .line 376
    return-void

    .line 368
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public updateDeleteButton()V
    .locals 3

    .prologue
    .line 193
    iget v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInputPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 194
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 197
    :cond_0
    return-void

    .line 193
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateHms()V
    .locals 8

    .prologue
    .line 275
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mEnteredHms:Lcom/codetroopers/betterpickers/hmspicker/HmsView;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->isNegative()Z

    move-result v1

    iget-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->mInput:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsView;->setTime(ZIIIII)V

    .line 276
    return-void
.end method
