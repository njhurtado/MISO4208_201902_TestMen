.class public Lcom/codetroopers/betterpickers/datepicker/DatePicker;
.super Landroid/widget/LinearLayout;
.source "DatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;,
        Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;
    }
.end annotation


# static fields
.field private static final KEYBOARD_DATE:Ljava/lang/String; = "date"

.field private static final KEYBOARD_MONTH:Ljava/lang/String; = "month"

.field private static final KEYBOARD_YEAR:Ljava/lang/String; = "year"

.field private static sDateKeyboardPosition:I

.field private static sMonthKeyboardPosition:I

.field private static sYearKeyboardPosition:I


# instance fields
.field private mButtonBackgroundResId:I

.field private mCheckDrawableSrcResId:I

.field protected final mContext:Landroid/content/Context;

.field private mDateFormatOrder:[C

.field protected mDateInput:[I

.field protected mDateInputPointer:I

.field protected mDateInputSize:I

.field protected mDateLeft:Landroid/widget/Button;

.field protected final mDateNumbers:[Landroid/widget/Button;

.field protected mDateRight:Landroid/widget/ImageButton;

.field protected mDelete:Landroid/widget/ImageButton;

.field private mDeleteDrawableSrcResId:I

.field protected mDivider:Landroid/view/View;

.field protected mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

.field private mKeyBackgroundResId:I

.field protected mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

.field private mKeyboardIndicatorColor:I

.field protected mKeyboardPager:Landroid/support/v4/view/ViewPager;

.field protected mKeyboardPagerAdapter:Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;

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

.field private mYearOptional:Z

.field protected mYearRight:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 60
    sput v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sMonthKeyboardPosition:I

    .line 61
    sput v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sDateKeyboardPosition:I

    .line 62
    sput v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sYearKeyboardPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v1, 0x2

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputSize:I

    .line 35
    const/4 v1, 0x4

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputSize:I

    .line 36
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    .line 37
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    .line 38
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    .line 39
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    .line 40
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    .line 41
    const/16 v1, 0xc

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    .line 42
    new-array v1, v3, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    .line 43
    new-array v1, v3, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearOptional:Z

    .line 75
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTheme:I

    .line 94
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mContext:Landroid/content/Context;

    .line 95
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateFormatOrder:[C

    .line 96
    invoke-static {}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->makeLocalizedMonthAbbreviations()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthAbbreviations:[Ljava/lang/String;

    .line 97
    const-string v1, "layout_inflater"

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 103
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->key_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    .line 104
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->button_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mButtonBackgroundResId:I

    .line 105
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->default_divider_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTitleDividerColor:I

    .line 106
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->default_keyboard_indicator_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicatorColor:I

    .line 107
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->ic_backspace_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDeleteDrawableSrcResId:I

    .line 108
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->ic_check_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mCheckDrawableSrcResId:I

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)[C
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateFormatOrder:[C

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sMonthKeyboardPosition:I

    return p0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    .prologue
    .line 31
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sDateKeyboardPosition:I

    return p0
.end method

.method static synthetic access$500(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    .prologue
    .line 31
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mCheckDrawableSrcResId:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sYearKeyboardPosition:I

    return p0
.end method

.method static synthetic access$700(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateKeypad()V

    return-void
.end method

.method private addClickedDateNumber(I)V
    .locals 5
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x1

    .line 536
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 537
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 538
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 537
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 540
    :cond_0
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    .line 541
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 543
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getMonthOfYear()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 544
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 545
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 548
    :cond_3
    return-void
.end method

.method private addClickedYearNumber(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 551
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 552
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 553
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 552
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 555
    :cond_0
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    .line 556
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 559
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getYear()I

    move-result v1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 560
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 562
    :cond_2
    return-void
.end method

.method private canGoToYear()Z
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableSetButton()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mSetButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mSetButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearOptional:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getYear()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getMonthOfYear()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static makeLocalizedMonthAbbreviations()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->makeLocalizedMonthAbbreviations(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeLocalizedMonthAbbreviations(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v8, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 825
    if-eqz p0, :cond_0

    move v1, v5

    .line 826
    .local v1, "hasLocale":Z
    :goto_0
    if-eqz v1, :cond_1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "MMM"

    invoke-direct {v3, v7, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 828
    .local v3, "monthAbbreviationFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 830
    .local v0, "date":Ljava/util/Calendar;
    :goto_2
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 831
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 832
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 833
    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 834
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 835
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 837
    new-array v4, v8, [Ljava/lang/String;

    .line 838
    .local v4, "months":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 839
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 840
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 838
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "date":Ljava/util/Calendar;
    .end local v1    # "hasLocale":Z
    .end local v2    # "i":I
    .end local v3    # "monthAbbreviationFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "months":[Ljava/lang/String;
    :cond_0
    move v1, v6

    .line 825
    goto :goto_0

    .line 826
    .restart local v1    # "hasLocale":Z
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "MMM"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 828
    .restart local v3    # "monthAbbreviationFormat":Ljava/text/SimpleDateFormat;
    :cond_2
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    goto :goto_2

    .line 842
    .restart local v0    # "date":Ljava/util/Calendar;
    .restart local v2    # "i":I
    .restart local v4    # "months":[Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method private onDateRightClicked()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 571
    :cond_0
    return-void
.end method

.method private restyleViews()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 146
    .local v1, "month":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 147
    iget-object v7, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    iget v7, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 145
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "month":Landroid/widget/Button;
    :cond_1
    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    .line 152
    .local v0, "dateNumber":Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 153
    iget-object v7, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    iget v7, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 151
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "dateNumber":Landroid/widget/Button;
    :cond_3
    iget-object v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v2, v4, v3

    .line 158
    .local v2, "yearNumber":Landroid/widget/Button;
    if-eqz v2, :cond_4

    .line 159
    iget-object v6, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 160
    iget v6, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 157
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 163
    .end local v2    # "yearNumber":Landroid/widget/Button;
    :cond_5
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    if-eqz v3, :cond_6

    .line 164
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicatorColor:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->setSelectedColor(I)V

    .line 166
    :cond_6
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDivider:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 167
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDivider:Landroid/view/View;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTitleDividerColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 169
    :cond_7
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateLeft:Landroid/widget/Button;

    if-eqz v3, :cond_8

    .line 170
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateLeft:Landroid/widget/Button;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateLeft:Landroid/widget/Button;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 173
    :cond_8
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    if-eqz v3, :cond_9

    .line 174
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 175
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mCheckDrawableSrcResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_9
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v3, :cond_a

    .line 178
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mButtonBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 179
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_a
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearLeft:Landroid/widget/Button;

    if-eqz v3, :cond_b

    .line 182
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearLeft:Landroid/widget/Button;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearLeft:Landroid/widget/Button;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 185
    :cond_b
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearRight:Landroid/widget/Button;

    if-eqz v3, :cond_c

    .line 186
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearRight:Landroid/widget/Button;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 187
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearRight:Landroid/widget/Button;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 189
    :cond_c
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    if-eqz v3, :cond_d

    .line 190
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTheme:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/datepicker/DateView;->setTheme(I)V

    .line 192
    :cond_d
    return-void
.end method

.method private setDateKeyRange(I)V
    .locals 3
    .param p1, "maxKey"    # I

    .prologue
    .line 652
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 653
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-gt v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 652
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 657
    :cond_2
    return-void
.end method

.method private setDateMinKeyRange(I)V
    .locals 3
    .param p1, "minKey"    # I

    .prologue
    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 666
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 665
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 670
    :cond_2
    return-void
.end method

.method private setYearKeyRange(I)V
    .locals 3
    .param p1, "maxKey"    # I

    .prologue
    .line 678
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 679
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-gt v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 678
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 683
    :cond_2
    return-void
.end method

.method private setYearMinKeyRange(I)V
    .locals 3
    .param p1, "minKey"    # I

    .prologue
    .line 691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 692
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 696
    :cond_2
    return-void
.end method

.method private updateDateKeys()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 610
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v0

    .line 611
    .local v0, "date":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 612
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setDateKeyRange(I)V

    .line 630
    :goto_0
    return-void

    .line 613
    :cond_0
    if-lt v0, v4, :cond_4

    .line 614
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    if-ne v1, v3, :cond_1

    .line 616
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setDateKeyRange(I)V

    goto :goto_0

    .line 617
    :cond_1
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 619
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setDateKeyRange(I)V

    goto :goto_0

    .line 621
    :cond_3
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setDateKeyRange(I)V

    goto :goto_0

    .line 623
    :cond_4
    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 624
    invoke-direct {p0, v5}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setDateKeyRange(I)V

    goto :goto_0

    .line 625
    :cond_5
    if-lt v0, v3, :cond_6

    .line 626
    invoke-direct {p0, v5}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setDateKeyRange(I)V

    goto :goto_0

    .line 628
    :cond_6
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setDateMinKeyRange(I)V

    goto :goto_0
.end method

.method private updateKeypad()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateLeftRightButtons()V

    .line 483
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateDate()V

    .line 485
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->enableSetButton()V

    .line 487
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateDeleteButton()V

    .line 488
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateMonthKeys()V

    .line 489
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateDateKeys()V

    .line 490
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateYearKeys()V

    .line 491
    return-void
.end method

.method private updateLeftRightButtons()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->canGoToYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 711
    :cond_0
    return-void
.end method

.method private updateMonthKeys()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v0

    .line 578
    .local v0, "date":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 578
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_1
    const/16 v2, 0x1d

    if-le v0, v2, :cond_2

    .line 585
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 586
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 589
    :cond_2
    const/16 v2, 0x1e

    if-le v0, v2, :cond_6

    .line 591
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v5

    if-eqz v2, :cond_3

    .line 592
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 594
    :cond_3
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v6

    if-eqz v2, :cond_4

    .line 595
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 597
    :cond_4
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v7

    if-eqz v2, :cond_5

    .line 598
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 600
    :cond_5
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 601
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 604
    :cond_6
    return-void
.end method

.method private updateYearKeys()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 636
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getYear()I

    move-result v0

    .line 637
    .local v0, "year":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 638
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setYearKeyRange(I)V

    .line 644
    :goto_0
    return-void

    .line 639
    :cond_0
    if-lt v0, v2, :cond_1

    .line 640
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setYearKeyRange(I)V

    goto :goto_0

    .line 642
    :cond_1
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setYearMinKeyRange(I)V

    goto :goto_0
.end method


# virtual methods
.method protected doOnClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 412
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_5

    .line 414
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateFormatOrder:[C

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 464
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateKeypad()V

    .line 465
    return-void

    .line 416
    :sswitch_0
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    if-eq v1, v4, :cond_0

    .line 417
    iput v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    goto :goto_0

    .line 421
    :sswitch_1
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    if-ltz v1, :cond_2

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    aput v5, v1, v2

    .line 426
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    goto :goto_0

    .line 427
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 432
    :sswitch_2
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    if-ltz v1, :cond_4

    .line 433
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    if-ge v0, v1, :cond_3

    .line 434
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    aput v5, v1, v2

    .line 437
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    goto :goto_0

    .line 438
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 443
    :cond_5
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_6

    .line 444
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->onDateRightClicked()V

    goto/16 :goto_0

    .line 445
    :cond_6
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/datepicker/DateView;->getDate()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 446
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    sget v2, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sDateKeyboardPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 447
    :cond_7
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/datepicker/DateView;->getMonth()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    move-result-object v1

    if-ne p1, v1, :cond_8

    .line 448
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    sget v2, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sMonthKeyboardPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 449
    :cond_8
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/datepicker/DateView;->getYear()Lcom/codetroopers/betterpickers/widget/ZeroTopPaddingTextView;

    move-result-object v1

    if-ne p1, v1, :cond_9

    .line 450
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    sget v2, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->sYearKeyboardPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 451
    :cond_9
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 453
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_month_int:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    .line 454
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 455
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0

    .line 457
    :cond_a
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 459
    sget v1, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->addClickedDateNumber(I)V

    goto/16 :goto_0

    .line 460
    :cond_b
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    sget v1, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->addClickedYearNumber(I)V

    goto/16 :goto_0

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_0
        0x64 -> :sswitch_1
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method public getDayOfMonth()I
    .locals 3

    .prologue
    .line 757
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/codetroopers/betterpickers/R$layout;->date_picker_view:I

    return v0
.end method

.method public getMonthOfYear()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    return v0
.end method

.method public getYear()I
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 406
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 407
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->doOnClick(Landroid/view/View;)V

    .line 408
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateDeleteButton()V

    .line 409
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 198
    sget v1, Lcom/codetroopers/betterpickers/R$id;->divider:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDivider:Landroid/view/View;

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    aput v4, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    aput v4, v1, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_1
    sget v1, Lcom/codetroopers/betterpickers/R$id;->keyboard_indicator:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    .line 208
    sget v1, Lcom/codetroopers/betterpickers/R$id;->keyboard_pager:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    .line 209
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 210
    new-instance v2, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    .line 211
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-direct {v2, p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;-><init>(Lcom/codetroopers/betterpickers/datepicker/DatePicker;Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPagerAdapter:Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;

    .line 212
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPagerAdapter:Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 213
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 214
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 216
    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_text:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codetroopers/betterpickers/datepicker/DateView;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    .line 217
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTheme:I

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/datepicker/DateView;->setTheme(I)V

    .line 218
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicator:Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/datepicker/DateView;->setUnderlinePage(Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;)V

    .line 219
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    invoke-virtual {v1, p0}, Lcom/codetroopers/betterpickers/datepicker/DateView;->setOnClick(Landroid/view/View$OnClickListener;)V

    .line 221
    sget v1, Lcom/codetroopers/betterpickers/R$id;->delete:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    .line 222
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setLeftRightEnabled()V

    .line 226
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateDate()V

    .line 227
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateKeypad()V

    .line 228
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 469
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 470
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 472
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->reset()V

    .line 473
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateKeypad()V

    .line 474
    const/4 v0, 0x1

    .line 476
    :cond_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, -0x1

    .line 859
    instance-of v1, p1, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;

    if-nez v1, :cond_0

    .line 860
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 881
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 864
    check-cast v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;

    .line 865
    .local v0, "savedState":Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 867
    iget v1, v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mDateInputPointer:I

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    .line 868
    iget v1, v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mYearInputPointer:I

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    .line 869
    iget-object v1, v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mDateInput:[I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    .line 870
    iget-object v1, v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mYearInput:[I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    .line 871
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    if-nez v1, :cond_1

    .line 872
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    .line 873
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    if-nez v1, :cond_2

    .line 876
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    .line 877
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    .line 879
    :cond_2
    iget v1, v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mMonthInput:I

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    .line 880
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateKeypad()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 847
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 848
    .local v0, "parcel":Landroid/os/Parcelable;
    new-instance v1, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;

    invoke-direct {v1, v0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 849
    .local v1, "state":Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;
    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    iput v2, v1, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mMonthInput:I

    .line 850
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    iput-object v2, v1, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mDateInput:[I

    .line 851
    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    iput v2, v1, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mDateInputPointer:I

    .line 852
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    iput-object v2, v1, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mYearInput:[I

    .line 853
    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    iput v2, v1, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mYearInputPointer:I

    .line 854
    return-object v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputSize:I

    if-ge v0, v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    aput v3, v1, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputSize:I

    if-ge v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    aput v3, v1, v0

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    :cond_1
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    .line 504
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    .line 505
    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    .line 506
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 507
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateDate()V

    .line 508
    return-void
.end method

.method public setDate(III)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 768
    iput p2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    .line 769
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    div-int/lit16 v3, p1, 0x3e8

    aput v3, v2, v7

    .line 770
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    rem-int/lit16 v3, p1, 0x3e8

    div-int/lit8 v3, v3, 0x64

    aput v3, v2, v6

    .line 771
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    rem-int/lit8 v3, p1, 0x64

    div-int/lit8 v3, v3, 0xa

    aput v3, v2, v4

    .line 772
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInput:[I

    rem-int/lit8 v3, p1, 0xa

    aput v3, v2, v5

    .line 773
    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_3

    .line 774
    iput v7, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    .line 782
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    div-int/lit8 v3, p3, 0xa

    aput v3, v2, v4

    .line 783
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInput:[I

    rem-int/lit8 v3, p3, 0xa

    aput v3, v2, v5

    .line 784
    if-lt p3, v8, :cond_6

    .line 785
    iput v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    .line 789
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateFormatOrder:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 790
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateFormatOrder:[C

    aget-char v0, v2, v1

    .line 791
    .local v0, "c":C
    const/16 v2, 0x4d

    if-ne v0, v2, :cond_7

    const/4 v2, -0x1

    if-ne p2, v2, :cond_7

    .line 792
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 802
    .end local v0    # "c":C
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateKeypad()V

    .line 803
    return-void

    .line 775
    .end local v1    # "i":I
    :cond_3
    const/16 v2, 0x64

    if-lt p1, v2, :cond_4

    .line 776
    iput v6, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    goto :goto_0

    .line 777
    :cond_4
    if-lt p1, v8, :cond_5

    .line 778
    iput v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    goto :goto_0

    .line 779
    :cond_5
    if-lez p1, :cond_0

    .line 780
    iput v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    goto :goto_0

    .line 786
    :cond_6
    if-lez p3, :cond_1

    .line 787
    iput v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    goto :goto_1

    .line 794
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_7
    const/16 v2, 0x64

    if-ne v0, v2, :cond_8

    if-gtz p3, :cond_8

    .line 795
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3

    .line 797
    :cond_8
    const/16 v2, 0x79

    if-ne v0, v2, :cond_9

    if-gtz p1, :cond_9

    .line 798
    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3

    .line 789
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected setLeftRightEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateLeft:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->canGoToYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearLeft:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearRight:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 531
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 533
    :cond_3
    return-void
.end method

.method public setSetButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "b"    # Landroid/widget/Button;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mSetButton:Landroid/widget/Button;

    .line 730
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->enableSetButton()V

    .line 731
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTheme:I

    .line 122
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTheme:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 126
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpKeyBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyBackgroundResId:I

    .line 128
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpButtonBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mButtonBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mButtonBackgroundResId:I

    .line 130
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpCheckIcon:I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mCheckDrawableSrcResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mCheckDrawableSrcResId:I

    .line 132
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTitleDividerColor:I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTitleDividerColor:I

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mTitleDividerColor:I

    .line 134
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpKeyboardIndicatorColor:I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicatorColor:I

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mKeyboardIndicatorColor:I

    .line 137
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDeleteIcon:I

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDeleteDrawableSrcResId:I

    .line 141
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->restyleViews()V

    .line 142
    return-void
.end method

.method public setYearOptional(Z)V
    .locals 0
    .param p1, "yearOptional"    # Z

    .prologue
    .line 806
    iput-boolean p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearOptional:Z

    .line 807
    return-void
.end method

.method protected updateDate()V
    .locals 4

    .prologue
    .line 512
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    if-gez v1, :cond_0

    .line 513
    const-string v0, ""

    .line 517
    .local v0, "month":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mEnteredDate:Lcom/codetroopers/betterpickers/datepicker/DateView;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getYear()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/codetroopers/betterpickers/datepicker/DateView;->setDate(Ljava/lang/String;II)V

    .line 518
    return-void

    .line 515
    .end local v0    # "month":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthAbbreviations:[Ljava/lang/String;

    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    aget-object v0, v1, v2

    .restart local v0    # "month":Ljava/lang/String;
    goto :goto_0
.end method

.method public updateDeleteButton()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 398
    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthInput:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateInputPointer:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearInputPointer:I

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 399
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 402
    :cond_1
    return-void

    .line 398
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
