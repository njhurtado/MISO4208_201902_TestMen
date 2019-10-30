.class public Lcom/codetroopers/betterpickers/timepicker/TimePicker;
.super Landroid/widget/LinearLayout;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;
    }
.end annotation


# static fields
.field private static final AMPM_NOT_SELECTED:I = 0x0

.field private static final AM_SELECTED:I = 0x2

.field private static final HOURS24_MODE:I = 0x3

.field private static final PM_SELECTED:I = 0x1

.field private static final TIME_PICKER_SAVED_AMPM:Ljava/lang/String; = "timer_picker_saved_ampm"

.field private static final TIME_PICKER_SAVED_BUFFER_POINTER:Ljava/lang/String; = "timer_picker_saved_buffer_pointer"

.field private static final TIME_PICKER_SAVED_INPUT:Ljava/lang/String; = "timer_picker_saved_input"


# instance fields
.field private mAmPmLabel:Landroid/widget/TextView;

.field private mAmPmState:I

.field private mAmpm:[Ljava/lang/String;

.field private mButtonBackgroundResId:I

.field protected final mContext:Landroid/content/Context;

.field protected mDelete:Landroid/widget/ImageButton;

.field private mDeleteDrawableSrcResId:I

.field protected mDivider:Landroid/view/View;

.field private mDividerColor:I

.field protected mEnteredTime:Lcom/codetroopers/betterpickers/timepicker/TimerView;

.field protected mInput:[I

.field protected mInputPointer:I

.field protected mInputSize:I

.field private mIs24HoursMode:Z

.field private mKeyBackgroundResId:I

.field protected mLeft:Landroid/widget/Button;

.field private final mNoAmPmLabel:Ljava/lang/String;

.field protected final mNumbers:[Landroid/widget/Button;

.field protected mRight:Landroid/widget/Button;

.field private mSetButton:Landroid/widget/Button;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v1, 0x4

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputSize:I

    .line 26
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    .line 27
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    .line 28
    iput v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    .line 57
    iput v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTheme:I

    .line 76
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mContext:Landroid/content/Context;

    .line 77
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    .line 78
    const-string v1, "layout_inflater"

    .line 79
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$string;->time_picker_ampm_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNoAmPmLabel:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 85
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->key_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    .line 86
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->button_background_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mButtonBackgroundResId:I

    .line 87
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->default_divider_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDividerColor:I

    .line 88
    sget v1, Lcom/codetroopers/betterpickers/R$drawable;->ic_backspace_dark:I

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDeleteDrawableSrcResId:I

    .line 89
    return-void
.end method

.method private addClickedNumber(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 359
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 360
    iget v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 360
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 363
    :cond_0
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 364
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 366
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private canAddDigits()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 414
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 416
    .local v0, "time":I
    iget-boolean v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v3, :cond_2

    .line 417
    if-lt v0, v1, :cond_1

    const/16 v3, 0xc

    if-gt v0, v3, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 417
    goto :goto_0

    .line 420
    :cond_2
    if-ltz v0, :cond_3

    const/16 v3, 0x17

    if-gt v0, v3, :cond_3

    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private enableSetButton()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 617
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    if-nez v3, :cond_0

    .line 635
    :goto_0
    return-void

    .line 622
    :cond_0
    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 623
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 628
    :cond_1
    iget-boolean v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v3, :cond_4

    .line 629
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 630
    .local v0, "time":I
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    iget v4, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    const/16 v4, 0x3c

    if-lt v0, v4, :cond_2

    const/16 v4, 0x5f

    if-le v0, v4, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 633
    .end local v0    # "time":I
    :cond_4
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    iget v4, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 752
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getEnteredTime()I
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private onLeftClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 375
    .local v0, "time":I
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v1, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 378
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 380
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 381
    :cond_2
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 383
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    goto :goto_0
.end method

.method private onRightClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 394
    .local v0, "time":I
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v1, :cond_2

    .line 395
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 397
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 399
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 403
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    goto :goto_0
.end method

.method private restyleViews()V
    .locals 5

    .prologue
    .line 119
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 120
    .local v0, "number":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 121
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    iget v4, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "number":Landroid/widget/Button;
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDivider:Landroid/view/View;

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 134
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 137
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 138
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    .line 141
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mButtonBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 142
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_6
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/codetroopers/betterpickers/timepicker/TimerView;

    if-eqz v1, :cond_7

    .line 145
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/codetroopers/betterpickers/timepicker/TimerView;

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTheme:I

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->setTheme(I)V

    .line 147
    :cond_7
    return-void
.end method

.method private setKeyRange(I)V
    .locals 3
    .param p1, "maxKey"    # I

    .prologue
    .line 590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    aget-object v2, v1, v0

    if-gt v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 593
    :cond_1
    return-void
.end method

.method private showAmPm()V
    .locals 3

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v0, :cond_0

    .line 339
    iget v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    packed-switch v0, :pswitch_data_0

    .line 356
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNoAmPmLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    const/4 v0, 0x3

    iput v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateKeypad()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->showAmPm()V

    .line 278
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateLeftRightButtons()V

    .line 279
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateTime()V

    .line 281
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateNumericKeys()V

    .line 283
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->enableSetButton()V

    .line 285
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateDeleteButton()V

    .line 287
    return-void
.end method

.method private updateLeftRightButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v1

    .line 597
    .local v1, "time":I
    iget-boolean v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v2, :cond_0

    .line 598
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->canAddDigits()Z

    move-result v0

    .line 599
    .local v0, "enable":Z
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 600
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 611
    .end local v0    # "enable":Z
    :goto_0
    return-void

    .line 603
    :cond_0
    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    if-eqz v2, :cond_3

    .line 604
    :cond_2
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 605
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 607
    :cond_3
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 608
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateNumericKeys()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, -0x1

    const/16 v3, 0x9

    .line 427
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v0

    .line 428
    .local v0, "time":I
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v1, :cond_39

    .line 429
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 430
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    if-nez v0, :cond_5

    .line 432
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v7, :cond_3

    .line 433
    :cond_2
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 434
    :cond_3
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v6, :cond_4

    .line 435
    invoke-direct {p0, v5}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 437
    :cond_4
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 439
    :cond_5
    if-ne v0, v6, :cond_9

    .line 440
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v7, :cond_7

    .line 441
    :cond_6
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 442
    :cond_7
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v6, :cond_8

    .line 443
    invoke-direct {p0, v5}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 445
    :cond_8
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 447
    :cond_9
    if-ne v0, v7, :cond_d

    .line 448
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-eq v1, v7, :cond_a

    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v1, v6, :cond_b

    .line 449
    :cond_a
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 450
    :cond_b
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-nez v1, :cond_c

    .line 451
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 453
    :cond_c
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 455
    :cond_d
    if-gt v0, v5, :cond_e

    .line 456
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 457
    :cond_e
    if-gt v0, v3, :cond_f

    .line 458
    invoke-direct {p0, v5}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 459
    :cond_f
    const/16 v1, 0xa

    if-lt v0, v1, :cond_10

    const/16 v1, 0xf

    if-gt v0, v1, :cond_10

    .line 460
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 461
    :cond_10
    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    const/16 v1, 0x13

    if-gt v0, v1, :cond_11

    .line 462
    invoke-direct {p0, v5}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto :goto_0

    .line 463
    :cond_11
    const/16 v1, 0x14

    if-lt v0, v1, :cond_12

    const/16 v1, 0x19

    if-gt v0, v1, :cond_12

    .line 464
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 465
    :cond_12
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_13

    .line 466
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 467
    :cond_13
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_14

    const/16 v1, 0x23

    if-gt v0, v1, :cond_14

    .line 468
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 469
    :cond_14
    const/16 v1, 0x24

    if-lt v0, v1, :cond_15

    const/16 v1, 0x27

    if-gt v0, v1, :cond_15

    .line 470
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 471
    :cond_15
    const/16 v1, 0x28

    if-lt v0, v1, :cond_16

    const/16 v1, 0x2d

    if-gt v0, v1, :cond_16

    .line 472
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 473
    :cond_16
    const/16 v1, 0x2e

    if-lt v0, v1, :cond_17

    const/16 v1, 0x31

    if-gt v0, v1, :cond_17

    .line 474
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 475
    :cond_17
    const/16 v1, 0x32

    if-lt v0, v1, :cond_18

    const/16 v1, 0x37

    if-gt v0, v1, :cond_18

    .line 476
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 477
    :cond_18
    const/16 v1, 0x38

    if-lt v0, v1, :cond_19

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_19

    .line 478
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 479
    :cond_19
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x41

    if-gt v0, v1, :cond_1a

    .line 480
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 481
    :cond_1a
    const/16 v1, 0x46

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x4b

    if-gt v0, v1, :cond_1b

    .line 482
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 483
    :cond_1b
    const/16 v1, 0x50

    if-lt v0, v1, :cond_1c

    const/16 v1, 0x55

    if-gt v0, v1, :cond_1c

    .line 484
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 485
    :cond_1c
    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1d

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_1d

    .line 486
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 487
    :cond_1d
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x69

    if-gt v0, v1, :cond_1e

    .line 488
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 489
    :cond_1e
    const/16 v1, 0x6a

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x6d

    if-gt v0, v1, :cond_1f

    .line 490
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 491
    :cond_1f
    const/16 v1, 0x6e

    if-lt v0, v1, :cond_20

    const/16 v1, 0x73

    if-gt v0, v1, :cond_20

    .line 492
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 493
    :cond_20
    const/16 v1, 0x74

    if-lt v0, v1, :cond_21

    const/16 v1, 0x77

    if-gt v0, v1, :cond_21

    .line 494
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 495
    :cond_21
    const/16 v1, 0x78

    if-lt v0, v1, :cond_22

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_22

    .line 496
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 497
    :cond_22
    const/16 v1, 0x7e

    if-lt v0, v1, :cond_23

    const/16 v1, 0x81

    if-gt v0, v1, :cond_23

    .line 498
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 499
    :cond_23
    const/16 v1, 0x82

    if-lt v0, v1, :cond_24

    const/16 v1, 0x87

    if-gt v0, v1, :cond_24

    .line 500
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 501
    :cond_24
    const/16 v1, 0x88

    if-lt v0, v1, :cond_25

    const/16 v1, 0x8b

    if-gt v0, v1, :cond_25

    .line 502
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 503
    :cond_25
    const/16 v1, 0x8c

    if-lt v0, v1, :cond_26

    const/16 v1, 0x91

    if-gt v0, v1, :cond_26

    .line 504
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 505
    :cond_26
    const/16 v1, 0x92

    if-lt v0, v1, :cond_27

    const/16 v1, 0x95

    if-gt v0, v1, :cond_27

    .line 506
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 507
    :cond_27
    const/16 v1, 0x96

    if-lt v0, v1, :cond_28

    const/16 v1, 0x9b

    if-gt v0, v1, :cond_28

    .line 508
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 509
    :cond_28
    const/16 v1, 0x9c

    if-lt v0, v1, :cond_29

    const/16 v1, 0x9f

    if-gt v0, v1, :cond_29

    .line 510
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 511
    :cond_29
    const/16 v1, 0xa0

    if-lt v0, v1, :cond_2a

    const/16 v1, 0xa5

    if-gt v0, v1, :cond_2a

    .line 512
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 513
    :cond_2a
    const/16 v1, 0xa6

    if-lt v0, v1, :cond_2b

    const/16 v1, 0xa9

    if-gt v0, v1, :cond_2b

    .line 514
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 515
    :cond_2b
    const/16 v1, 0xaa

    if-lt v0, v1, :cond_2c

    const/16 v1, 0xaf

    if-gt v0, v1, :cond_2c

    .line 516
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 517
    :cond_2c
    const/16 v1, 0xb0

    if-lt v0, v1, :cond_2d

    const/16 v1, 0xb3

    if-gt v0, v1, :cond_2d

    .line 518
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 519
    :cond_2d
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_2e

    const/16 v1, 0xb9

    if-gt v0, v1, :cond_2e

    .line 520
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 521
    :cond_2e
    const/16 v1, 0xba

    if-lt v0, v1, :cond_2f

    const/16 v1, 0xbd

    if-gt v0, v1, :cond_2f

    .line 522
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 523
    :cond_2f
    const/16 v1, 0xbe

    if-lt v0, v1, :cond_30

    const/16 v1, 0xc3

    if-gt v0, v1, :cond_30

    .line 524
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 525
    :cond_30
    const/16 v1, 0xc4

    if-lt v0, v1, :cond_31

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_31

    .line 526
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 527
    :cond_31
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_32

    const/16 v1, 0xcd

    if-gt v0, v1, :cond_32

    .line 528
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 529
    :cond_32
    const/16 v1, 0xce

    if-lt v0, v1, :cond_33

    const/16 v1, 0xd1

    if-gt v0, v1, :cond_33

    .line 530
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 531
    :cond_33
    const/16 v1, 0xd2

    if-lt v0, v1, :cond_34

    const/16 v1, 0xd7

    if-gt v0, v1, :cond_34

    .line 532
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 533
    :cond_34
    const/16 v1, 0xd8

    if-lt v0, v1, :cond_35

    const/16 v1, 0xdb

    if-gt v0, v1, :cond_35

    .line 534
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 535
    :cond_35
    const/16 v1, 0xdc

    if-lt v0, v1, :cond_36

    const/16 v1, 0xe1

    if-gt v0, v1, :cond_36

    .line 536
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 537
    :cond_36
    const/16 v1, 0xe2

    if-lt v0, v1, :cond_37

    const/16 v1, 0xe5

    if-gt v0, v1, :cond_37

    .line 538
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 539
    :cond_37
    const/16 v1, 0xe6

    if-lt v0, v1, :cond_38

    const/16 v1, 0xeb

    if-gt v0, v1, :cond_38

    .line 540
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 541
    :cond_38
    const/16 v1, 0xec

    if-lt v0, v1, :cond_0

    .line 542
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 546
    :cond_39
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    if-eqz v1, :cond_3a

    .line 547
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 548
    :cond_3a
    if-nez v0, :cond_3b

    .line 549
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    .line 552
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 554
    :cond_3b
    if-gt v0, v3, :cond_3c

    .line 555
    invoke-direct {p0, v5}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 556
    :cond_3c
    const/16 v1, 0x5f

    if-gt v0, v1, :cond_3d

    .line 557
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 558
    :cond_3d
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3e

    const/16 v1, 0x69

    if-gt v0, v1, :cond_3e

    .line 559
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 560
    :cond_3e
    const/16 v1, 0x6a

    if-lt v0, v1, :cond_3f

    const/16 v1, 0x6d

    if-gt v0, v1, :cond_3f

    .line 561
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 562
    :cond_3f
    const/16 v1, 0x6e

    if-lt v0, v1, :cond_40

    const/16 v1, 0x73

    if-gt v0, v1, :cond_40

    .line 563
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 564
    :cond_40
    const/16 v1, 0x74

    if-lt v0, v1, :cond_41

    const/16 v1, 0x77

    if-gt v0, v1, :cond_41

    .line 565
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 566
    :cond_41
    const/16 v1, 0x78

    if-lt v0, v1, :cond_42

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_42

    .line 567
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0

    .line 568
    :cond_42
    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 569
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setKeyRange(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doOnClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 224
    sget v2, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 226
    .local v1, "val":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->addClickedNumber(I)V

    .line 245
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateKeypad()V

    .line 246
    return-void

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_4

    .line 231
    iget-boolean v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    if-eqz v2, :cond_2

    .line 232
    iput v5, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    goto :goto_0

    .line 233
    :cond_2
    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ltz v2, :cond_0

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ge v0, v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_3
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    aput v5, v2, v3

    .line 238
    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    goto :goto_0

    .line 240
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 241
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->onLeftClicked()V

    goto :goto_0

    .line 242
    :cond_5
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->onRightClicked()V

    goto :goto_0
.end method

.method public getHours()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc

    .line 653
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int v0, v3, v4

    .line 654
    .local v0, "hours":I
    if-ne v0, v1, :cond_0

    .line 655
    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    packed-switch v3, :pswitch_data_0

    .line 666
    :cond_0
    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    :goto_0
    add-int/2addr v1, v0

    :goto_1
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 659
    goto :goto_1

    :pswitch_2
    move v1, v0

    .line 661
    goto :goto_1

    :cond_1
    move v1, v2

    .line 666
    goto :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/codetroopers/betterpickers/R$layout;->time_picker_view:I

    return v0
.end method

.method public getMinutes()I
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTime()I
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0xe10

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x258

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 219
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->doOnClick(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateDeleteButton()V

    .line 221
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 151
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 153
    sget v6, Lcom/codetroopers/betterpickers/R$id;->first:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 154
    .local v2, "v1":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->second:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 155
    .local v3, "v2":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->third:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 156
    .local v4, "v3":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->fourth:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 157
    .local v5, "v4":Landroid/view/View;
    sget v6, Lcom/codetroopers/betterpickers/R$id;->timer_time_text:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/codetroopers/betterpickers/timepicker/TimerView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/codetroopers/betterpickers/timepicker/TimerView;

    .line 158
    sget v6, Lcom/codetroopers/betterpickers/R$id;->delete:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    .line 159
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v11

    .line 163
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x2

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 164
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x3

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 166
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x4

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 167
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x5

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 168
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x6

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 170
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/4 v8, 0x7

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 171
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    const/16 v8, 0x8

    sget v6, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v7, v8

    .line 172
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

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

    iput-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    .line 175
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

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

    iput-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    .line 177
    invoke-virtual {p0, v10}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setLeftRightEnabled(Z)V

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v0, v6, :cond_0

    .line 180
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

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
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mNumbers:[Landroid/widget/Button;

    aget-object v6, v6, v0

    sget v7, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateTime()V

    .line 186
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v6, Ljava/text/DateFormatSymbols;

    invoke-direct {v6}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v6}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    .line 189
    iget-boolean v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v6, :cond_1

    .line 190
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    sget v7, Lcom/codetroopers/betterpickers/R$string;->time_picker_00_label:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    sget v7, Lcom/codetroopers/betterpickers/R$string;->time_picker_30_label:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_1
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v6, Lcom/codetroopers/betterpickers/R$id;->ampm_label:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmLabel:Landroid/widget/TextView;

    .line 199
    iput v10, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 200
    sget v6, Lcom/codetroopers/betterpickers/R$id;->divider:I

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDivider:Landroid/view/View;

    .line 202
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->restyleViews()V

    .line 203
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateKeypad()V

    .line 204
    return-void

    .line 193
    :cond_1
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmpm:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 251
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 254
    iput v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 255
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->reset()V

    .line 256
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateKeypad()V

    .line 257
    const/4 v0, 0x1

    .line 259
    :cond_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 690
    instance-of v1, p1, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;

    if-nez v1, :cond_0

    .line 691
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 706
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 695
    check-cast v0, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;

    .line 696
    .local v0, "savedState":Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 698
    iget v1, v0, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;->mInputPointer:I

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 699
    iget-object v1, v0, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;->mInput:[I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    .line 700
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    if-nez v1, :cond_1

    .line 701
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    .line 702
    const/4 v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 704
    :cond_1
    iget v1, v0, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;->mAmPmState:I

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    .line 705
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateKeypad()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 680
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 681
    .local v0, "parcel":Landroid/os/Parcelable;
    new-instance v1, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;

    invoke-direct {v1, v0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 682
    .local v1, "state":Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    iput-object v2, v1, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;->mInput:[I

    .line 683
    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mAmPmState:I

    iput v2, v1, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;->mAmPmState:I

    .line 684
    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    iput v2, v1, Lcom/codetroopers/betterpickers/timepicker/TimePicker$SavedState;->mInputPointer:I

    .line 685
    return-object v1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputSize:I

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 270
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateTime()V

    .line 271
    return-void
.end method

.method public restoreEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 769
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 770
    .local v1, "input":[I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputSize:I

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputSize:I

    if-ge v0, v2, :cond_1

    .line 772
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v3, v1, v0

    aput v3, v2, v0

    .line 773
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 774
    iput v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    .line 771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->updateTime()V

    .line 779
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public saveEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 766
    return-void
.end method

.method protected setLeftRightEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 782
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 783
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 784
    if-nez p1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 788
    :cond_0
    return-void
.end method

.method public setSetButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "b"    # Landroid/widget/Button;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mSetButton:Landroid/widget/Button;

    .line 644
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->enableSetButton()V

    .line 645
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "themeResId"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTheme:I

    .line 102
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTheme:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mTextColor:Landroid/content/res/ColorStateList;

    .line 106
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpKeyBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mKeyBackgroundResId:I

    .line 108
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpButtonBackground:I

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mButtonBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mButtonBackgroundResId:I

    .line 110
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDividerColor:I

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDividerColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDividerColor:I

    .line 111
    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDeleteIcon:I

    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDeleteDrawableSrcResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDeleteDrawableSrcResId:I

    .line 115
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->restyleViews()V

    .line 116
    return-void
.end method

.method public updateDeleteButton()V
    .locals 3

    .prologue
    .line 210
    iget v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 211
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 214
    :cond_0
    return-void

    .line 210
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTime()V
    .locals 14

    .prologue
    const/16 v10, 0x9

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v7, -0x1

    .line 302
    const/4 v2, -0x1

    .line 303
    .local v2, "hours1":I
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getEnteredTime()I

    move-result v6

    .line 306
    .local v6, "time":I
    iget v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-le v8, v7, :cond_7

    .line 308
    iget v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ltz v8, :cond_2

    .line 309
    iget-object v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    iget v9, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    aget v0, v8, v9

    .line 310
    .local v0, "digit":I
    iget-boolean v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v8, :cond_0

    if-lt v0, v11, :cond_0

    if-le v0, v10, :cond_1

    :cond_0
    iget-boolean v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v8, :cond_2

    if-lt v0, v12, :cond_2

    if-gt v0, v10, :cond_2

    .line 312
    :cond_1
    const/4 v2, -0x2

    .line 317
    .end local v0    # "digit":I
    :cond_2
    iget v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-lez v8, :cond_5

    iget v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ge v8, v11, :cond_5

    const/4 v8, -0x2

    if-eq v2, v8, :cond_5

    .line 318
    iget-object v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    iget v9, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    aget v8, v8, v9

    mul-int/lit8 v8, v8, 0xa

    iget-object v9, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    iget v10, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    add-int v1, v8, v9

    .line 319
    .local v1, "digits":I
    iget-boolean v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-eqz v8, :cond_3

    const/16 v8, 0x18

    if-lt v1, v8, :cond_3

    const/16 v8, 0x19

    if-le v1, v8, :cond_4

    :cond_3
    iget-boolean v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mIs24HoursMode:Z

    if-nez v8, :cond_5

    const/16 v8, 0xd

    if-lt v1, v8, :cond_5

    const/16 v8, 0xf

    if-gt v1, v8, :cond_5

    .line 321
    :cond_4
    const/4 v2, -0x2

    .line 325
    .end local v1    # "digits":I
    :cond_5
    iget v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ne v8, v11, :cond_6

    .line 326
    iget-object v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v2, v8, v11

    .line 331
    :cond_6
    :goto_0
    iget v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ge v8, v12, :cond_8

    move v3, v7

    .line 332
    .local v3, "hours2":I
    :goto_1
    iget v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-ge v8, v13, :cond_9

    move v4, v7

    .line 333
    .local v4, "minutes1":I
    :goto_2
    iget v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInputPointer:I

    if-gez v8, :cond_a

    move v5, v7

    .line 334
    .local v5, "minutes2":I
    :goto_3
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mEnteredTime:Lcom/codetroopers/betterpickers/timepicker/TimerView;

    invoke-virtual {v7, v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/timepicker/TimerView;->setTime(IIII)V

    .line 335
    return-void

    .line 329
    .end local v3    # "hours2":I
    .end local v4    # "minutes1":I
    .end local v5    # "minutes2":I
    :cond_7
    const/4 v2, -0x1

    goto :goto_0

    .line 331
    :cond_8
    iget-object v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v3, v8, v12

    goto :goto_1

    .line 332
    .restart local v3    # "hours2":I
    :cond_9
    iget-object v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    aget v4, v8, v13

    goto :goto_2

    .line 333
    .restart local v4    # "minutes1":I
    :cond_a
    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->mInput:[I

    const/4 v8, 0x0

    aget v5, v7, v8

    goto :goto_3
.end method
