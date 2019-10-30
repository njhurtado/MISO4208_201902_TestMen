.class public Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;
.super Landroid/widget/LinearLayout;
.source "ExpirationPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;,
        Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;
    }
.end annotation


# static fields
.field private static final EXPIRATION_MONTH_POSITION:I = 0x0

.field private static final EXPIRATION_YEAR_POSITION:I = 0x1

.field private static final KEYBOARD_MONTH:Ljava/lang/String; = "month"

.field private static final KEYBOARD_YEAR:Ljava/lang/String; = "year"

.field private static sMonthKeyboardPosition:I

.field private static sYearKeyboardPosition:I


# instance fields
.field private mButtonBackgroundResId:I

.field private mCheckDrawableSrcResId:I

.field protected final mContext:Landroid/content/Context;

.field private mDateFormatOrder:[C

.field protected mDelete:Landroid/widget/ImageButton;

.field private mDeleteDrawableSrcResId:I

.field protected mDivider:Landroid/view/View;

.field protected mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

.field private mKeyBackgroundResId:I

.field protected mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

.field private mKeyboardIndicatorColor:I

.field protected mKeyboardPager:Landroid/support/v4/view/ViewPager;

.field protected mKeyboardPagerAdapter:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;

.field protected mMinimumYear:I

.field protected mMonthAbbreviations:[Ljava/lang/String;

.field protected mMonthInput:I

.field protected final mMonths:[Landroid/widget/Button;

.field private mSetButton:Landroid/widget/Button;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I

.field private mTitleDividerColor:I

.field protected mYearInput:[I

.field protected mYearInputPointer:I

.field protected mYearInputSize:I

.field protected mYearLeft:Landroid/widget/Button;

.field protected final mYearNumbers:[Landroid/widget/Button;

.field protected mYearRight:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 55
    sput v0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->sMonthKeyboardPosition:I

    .line 56
    sput v0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->sYearKeyboardPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v1, 0x4

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputSize:I

    .line 36
    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    .line 37
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    .line 38
    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    .line 40
    const/16 v1, 0xc

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    .line 41
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    .line 68
    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTheme:I

    .line 87
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mContext:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDateFormatOrder:[C

    .line 89
    invoke-static {}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->makeLocalizedMonthAbbreviations()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthAbbreviations:[Ljava/lang/String;

    .line 90
    const-string v1, "layout_inflater"

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 96
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->key_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyBackgroundResId:I

    .line 97
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->button_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mButtonBackgroundResId:I

    .line 98
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->default_divider_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTitleDividerColor:I

    .line 99
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->default_keyboard_indicator_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicatorColor:I

    .line 100
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->ic_backspace_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDeleteDrawableSrcResId:I

    .line 101
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->ic_check_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mCheckDrawableSrcResId:I

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    .line 104
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->sMonthKeyboardPosition:I

    return p0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    .prologue
    .line 29
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyBackgroundResId:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->sYearKeyboardPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateKeypad()V

    return-void
.end method

.method private addClickedYearNumber(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 452
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 453
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 453
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 456
    :cond_0
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    .line 457
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 459
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 460
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 462
    :cond_2
    return-void
.end method

.method private enableSetButton()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mSetButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mSetButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getYear()I

    move-result v0

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getMonthOfYear()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private restyleViews()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 150
    .local v0, "month":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 151
    iget-object v6, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    iget v6, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 149
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "month":Landroid/widget/Button;
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 156
    .local v1, "yearNumber":Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 157
    iget-object v5, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 158
    iget v5, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 155
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v1    # "yearNumber":Landroid/widget/Button;
    :cond_3
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicatorColor:I

    invoke-virtual {v2, v3}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->setSelectedColor(I)V

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDivider:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 165
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDivider:Landroid/view/View;

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTitleDividerColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v2, :cond_6

    .line 168
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mButtonBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 169
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_6
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearLeft:Landroid/widget/Button;

    if-eqz v2, :cond_7

    .line 172
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearLeft:Landroid/widget/Button;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearLeft:Landroid/widget/Button;

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 175
    :cond_7
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearRight:Landroid/widget/Button;

    if-eqz v2, :cond_8

    .line 176
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearRight:Landroid/widget/Button;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 177
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearRight:Landroid/widget/Button;

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 179
    :cond_8
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    if-eqz v2, :cond_9

    .line 180
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTheme:I

    invoke-virtual {v2, v3}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->setTheme(I)V

    .line 182
    :cond_9
    return-void
.end method

.method private setYearKeyRange(I)V
    .locals 3
    .param p1, "maxKey"    # I

    .prologue
    .line 494
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-gt v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 494
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 499
    :cond_2
    return-void
.end method

.method private setYearMinKeyRange(I)V
    .locals 3
    .param p1, "minKey"    # I

    .prologue
    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 507
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 512
    :cond_2
    return-void
.end method

.method private updateKeypad()V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateExpiration()V

    .line 410
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->enableSetButton()V

    .line 412
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateDeleteButton()V

    .line 413
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateMonthKeys()V

    .line 414
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateYearKeys()V

    .line 415
    return-void
.end method

.method private updateMonthKeys()V
    .locals 3

    .prologue
    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_1
    return-void
.end method

.method private updateYearKeys()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 479
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 480
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setYearMinKeyRange(I)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 482
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    rem-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setYearMinKeyRange(I)V

    goto :goto_0

    .line 483
    :cond_2
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 484
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setYearKeyRange(I)V

    goto :goto_0
.end method


# virtual methods
.method protected doOnClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 356
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateKeypad()V

    .line 391
    return-void

    .line 360
    :pswitch_0
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    if-eq v1, v2, :cond_0

    .line 361
    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    goto :goto_0

    .line 365
    :pswitch_1
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    if-lt v1, v4, :cond_2

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    if-ge v0, v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 370
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 376
    :cond_3
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->getMonth()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 377
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    sget v2, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->sMonthKeyboardPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->getYear()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 379
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    sget v2, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->sYearKeyboardPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 380
    :cond_5
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 382
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_month_int:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    .line 383
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 384
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0

    .line 386
    :cond_6
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    sget v1, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->addClickedYearNumber(I)V

    goto/16 :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/codetroopers/betterpickers/R$layout;->expiration_picker_view:I

    return v0
.end method

.method public getMonthOfYear()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    return v0
.end method

.method public getYear()I
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 351
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->doOnClick(Landroid/view/View;)V

    .line 352
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateDeleteButton()V

    .line 353
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 188
    sget v1, Lcom/codetroopers/betterpickers/R$id;->divider:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDivider:Landroid/view/View;

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    aput v4, v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    sget v1, Lcom/codetroopers/betterpickers/R$id;->keyboard_indicator:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    .line 195
    sget v1, Lcom/codetroopers/betterpickers/R$id;->keyboard_pager:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    .line 196
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 197
    new-instance v2, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    .line 198
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-direct {v2, p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;-><init>(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPagerAdapter:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;

    .line 199
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPagerAdapter:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 200
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 201
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 203
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_text:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    .line 204
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTheme:I

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->setTheme(I)V

    .line 205
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->setUnderlinePage(Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;)V

    .line 206
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    invoke-virtual {v1, p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->setOnClick(Landroid/view/View$OnClickListener;)V

    .line 208
    sget v1, Lcom/codetroopers/betterpickers/R$id;->delete:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    .line 209
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 212
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->addClickedYearNumber(I)V

    .line 213
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    rem-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x64

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->addClickedYearNumber(I)V

    .line 214
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 216
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setLeftRightEnabled()V

    .line 217
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateExpiration()V

    .line 218
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateKeypad()V

    .line 219
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 396
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->reset()V

    .line 399
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateKeypad()V

    .line 400
    const/4 v0, 0x1

    .line 402
    :cond_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 602
    instance-of v1, p1, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;

    if-nez v1, :cond_0

    .line 603
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 618
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 607
    check-cast v0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;

    .line 608
    .local v0, "savedState":Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;
    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 610
    iget v1, v0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;->mYearInputPointer:I

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    .line 611
    iget-object v1, v0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;->mYearInput:[I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    .line 612
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    if-nez v1, :cond_1

    .line 613
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    .line 614
    const/4 v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    .line 616
    :cond_1
    iget v1, v0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;->mMonthInput:I

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    .line 617
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateKeypad()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 592
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 593
    .local v0, "parcel":Landroid/os/Parcelable;
    new-instance v1, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 594
    .local v1, "state":Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;
    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    iput v2, v1, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;->mMonthInput:I

    .line 595
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    iput-object v2, v1, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;->mYearInput:[I

    .line 596
    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    iput v2, v1, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$SavedState;->mYearInputPointer:I

    .line 597
    return-object v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputSize:I

    if-ge v0, v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    aput v3, v1, v0

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    .line 425
    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    .line 426
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 427
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateExpiration()V

    .line 428
    return-void
.end method

.method public setExpiration(II)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 559
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    if-ge p1, v2, :cond_0

    .line 560
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Years past the minimum set year are not allowed. Specify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or above."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    :cond_0
    iput p2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    .line 564
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    div-int/lit16 v3, p1, 0x3e8

    aput v3, v2, v7

    .line 565
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    rem-int/lit16 v3, p1, 0x3e8

    div-int/lit8 v3, v3, 0x64

    aput v3, v2, v6

    .line 566
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    rem-int/lit8 v3, p1, 0x64

    div-int/lit8 v3, v3, 0xa

    aput v3, v2, v4

    .line 567
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInput:[I

    rem-int/lit8 v3, p1, 0xa

    aput v3, v2, v5

    .line 568
    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_3

    .line 569
    iput v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    .line 577
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDateFormatOrder:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 578
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDateFormatOrder:[C

    aget-char v0, v2, v1

    .line 579
    .local v0, "c":C
    const/16 v2, 0x4d

    if-ne v0, v2, :cond_6

    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 580
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 587
    .end local v0    # "c":C
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateKeypad()V

    .line 588
    return-void

    .line 570
    .end local v1    # "i":I
    :cond_3
    const/16 v2, 0x64

    if-lt p1, v2, :cond_4

    .line 571
    iput v6, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    goto :goto_0

    .line 572
    :cond_4
    const/16 v2, 0xa

    if-lt p1, v2, :cond_5

    .line 573
    iput v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    goto :goto_0

    .line 574
    :cond_5
    if-lez p1, :cond_1

    .line 575
    iput v5, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    goto :goto_0

    .line 582
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_6
    const/16 v2, 0x79

    if-ne v0, v2, :cond_7

    if-gtz p1, :cond_7

    .line 583
    iget-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    .line 577
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected setLeftRightEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearLeft:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearRight:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 449
    :cond_1
    return-void
.end method

.method public setMinYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMinimumYear:I

    .line 146
    return-void
.end method

.method public setSetButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "b"    # Landroid/widget/Button;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mSetButton:Landroid/widget/Button;

    .line 531
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->enableSetButton()V

    .line 532
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTheme:I

    .line 117
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTheme:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 121
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpKeyBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyBackgroundResId:I

    .line 123
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpButtonBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mButtonBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mButtonBackgroundResId:I

    .line 125
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpCheckIcon:I

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mCheckDrawableSrcResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mCheckDrawableSrcResId:I

    .line 127
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTitleDividerColor:I

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTitleDividerColor:I

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mTitleDividerColor:I

    .line 129
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpKeyboardIndicatorColor:I

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicatorColor:I

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mKeyboardIndicatorColor:I

    .line 132
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDeleteIcon:I

    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDeleteDrawableSrcResId:I

    .line 136
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->restyleViews()V

    .line 137
    return-void
.end method

.method public updateDeleteButton()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 342
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearInputPointer:I

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 343
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 346
    :cond_1
    return-void

    .line 342
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateExpiration()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 433
    iget v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    if-gez v1, :cond_0

    .line 434
    const-string v0, ""

    .line 439
    .local v0, "month":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mEnteredExpiration:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->getYear()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationView;->setExpiration(Ljava/lang/String;I)V

    .line 440
    return-void

    .line 437
    .end local v0    # "month":Ljava/lang/String;
    :cond_0
    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonthInput:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "month":Ljava/lang/String;
    goto :goto_0
.end method
