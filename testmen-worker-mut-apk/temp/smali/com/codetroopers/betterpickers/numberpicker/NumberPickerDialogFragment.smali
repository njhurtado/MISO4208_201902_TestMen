.class public Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "NumberPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;
    }
.end annotation


# static fields
.field private static final CURRENT_DECIMAL_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_CurrentDecimalKey"

.field private static final CURRENT_NUMBER_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_CurrentNumberKey"

.field private static final CURRENT_SIGN_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_CurrentSignKey"

.field private static final DECIMAL_VISIBILITY_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_DecimalVisibilityKey"

.field private static final LABEL_TEXT_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_LabelTextKey"

.field private static final MAX_NUMBER_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_MaxNumberKey"

.field private static final MIN_NUMBER_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_MinNumberKey"

.field private static final PLUS_MINUS_VISIBILITY_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_PlusMinusVisibilityKey"

.field private static final REFERENCE_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_ReferenceKey"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "NumberPickerDialogFragment_ThemeResIdKey"


# instance fields
.field private mCurrentDecimal:Ljava/lang/Double;

.field private mCurrentNumber:Ljava/lang/Integer;

.field private mCurrentSign:Ljava/lang/Integer;

.field private mDecimalVisibility:I

.field private mDialogBackgroundResId:I

.field private mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mLabelText:Ljava/lang/String;

.field private mMaxNumber:Ljava/math/BigDecimal;

.field private mMinNumber:Ljava/math/BigDecimal;

.field private mNumberPickerDialogHandlersV2:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;",
            ">;"
        }
    .end annotation
.end field

.field private mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

.field private mPlusMinusVisibility:I

.field private mReference:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 40
    iput v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mReference:I

    .line 41
    iput v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTheme:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mLabelText:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMinNumber:Ljava/math/BigDecimal;

    .line 47
    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMaxNumber:Ljava/math/BigDecimal;

    .line 48
    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentNumber:Ljava/lang/Integer;

    .line 49
    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentDecimal:Ljava/lang/Double;

    .line 50
    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentSign:Ljava/lang/Integer;

    .line 51
    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPlusMinusVisibility:I

    .line 52
    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDecimalVisibility:I

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mNumberPickerDialogHandlersV2:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMinNumber:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMaxNumber:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;Ljava/math/BigDecimal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;
    .param p1, "x1"    # Ljava/math/BigDecimal;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->isSmaller(Ljava/math/BigDecimal;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;Ljava/math/BigDecimal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;
    .param p1, "x1"    # Ljava/math/BigDecimal;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->isBigger(Ljava/math/BigDecimal;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mNumberPickerDialogHandlersV2:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    .prologue
    .line 25
    iget v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mReference:I

    return v0
.end method

.method private isBigger(Ljava/math/BigDecimal;)Z
    .locals 1
    .param p1, "number"    # Ljava/math/BigDecimal;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMaxNumber:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmaller(Ljava/math/BigDecimal;)Z
    .locals 1
    .param p1, "number"    # Ljava/math/BigDecimal;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMinNumber:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(IILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;
    .locals 6
    .param p0, "reference"    # I
    .param p1, "themeResId"    # I
    .param p2, "minNumber"    # Ljava/math/BigDecimal;
    .param p3, "maxNumber"    # Ljava/math/BigDecimal;
    .param p4, "plusMinusVisibility"    # Ljava/lang/Integer;
    .param p5, "decimalVisibility"    # Ljava/lang/Integer;
    .param p6, "labelText"    # Ljava/lang/String;
    .param p7, "currentNumberValue"    # Ljava/lang/Integer;
    .param p8, "currentDecimalValue"    # Ljava/lang/Double;
    .param p9, "currentNumberSign"    # Ljava/lang/Integer;

    .prologue
    .line 79
    new-instance v1, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-direct {v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;-><init>()V

    .line 80
    .local v1, "frag":Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "NumberPickerDialogFragment_ReferenceKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v2, "NumberPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    if-eqz p2, :cond_0

    .line 84
    const-string v2, "NumberPickerDialogFragment_MinNumberKey"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 86
    :cond_0
    if-eqz p3, :cond_1

    .line 87
    const-string v2, "NumberPickerDialogFragment_MaxNumberKey"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    :cond_1
    if-eqz p4, :cond_2

    .line 90
    const-string v2, "NumberPickerDialogFragment_PlusMinusVisibilityKey"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    :cond_2
    if-eqz p5, :cond_3

    .line 93
    const-string v2, "NumberPickerDialogFragment_DecimalVisibilityKey"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    :cond_3
    if-eqz p6, :cond_4

    .line 96
    const-string v2, "NumberPickerDialogFragment_LabelTextKey"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_4
    if-eqz p7, :cond_5

    .line 99
    const-string v2, "NumberPickerDialogFragment_CurrentNumberKey"

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    :cond_5
    if-eqz p8, :cond_6

    .line 102
    const-string v2, "NumberPickerDialogFragment_CurrentDecimalKey"

    invoke-virtual {p8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 104
    :cond_6
    if-eqz p9, :cond_7

    .line 105
    const-string v2, "NumberPickerDialogFragment_CurrentSignKey"

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    :cond_7
    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 275
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 121
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "NumberPickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "NumberPickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mReference:I

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "NumberPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const-string v2, "NumberPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTheme:I

    .line 127
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "NumberPickerDialogFragment_PlusMinusVisibilityKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    const-string v2, "NumberPickerDialogFragment_PlusMinusVisibilityKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPlusMinusVisibility:I

    .line 130
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "NumberPickerDialogFragment_DecimalVisibilityKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    const-string v2, "NumberPickerDialogFragment_DecimalVisibilityKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDecimalVisibility:I

    .line 133
    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "NumberPickerDialogFragment_MinNumberKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    const-string v2, "NumberPickerDialogFragment_MinNumberKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    iput-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMinNumber:Ljava/math/BigDecimal;

    .line 136
    :cond_4
    if-eqz v1, :cond_5

    const-string v2, "NumberPickerDialogFragment_MaxNumberKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 137
    const-string v2, "NumberPickerDialogFragment_MaxNumberKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    iput-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMaxNumber:Ljava/math/BigDecimal;

    .line 139
    :cond_5
    if-eqz v1, :cond_6

    const-string v2, "NumberPickerDialogFragment_LabelTextKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 140
    const-string v2, "NumberPickerDialogFragment_LabelTextKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mLabelText:Ljava/lang/String;

    .line 142
    :cond_6
    if-eqz v1, :cond_7

    const-string v2, "NumberPickerDialogFragment_CurrentNumberKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 143
    const-string v2, "NumberPickerDialogFragment_CurrentNumberKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentNumber:Ljava/lang/Integer;

    .line 145
    :cond_7
    if-eqz v1, :cond_8

    const-string v2, "NumberPickerDialogFragment_CurrentDecimalKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 146
    const-string v2, "NumberPickerDialogFragment_CurrentDecimalKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentDecimal:Ljava/lang/Double;

    .line 148
    :cond_8
    if-eqz v1, :cond_9

    const-string v2, "NumberPickerDialogFragment_CurrentSignKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 149
    const-string v2, "NumberPickerDialogFragment_CurrentSignKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentSign:Ljava/lang/Integer;

    .line 152
    :cond_9
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->setStyle(II)V

    .line 155
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 156
    sget v2, Lcom/codetroopers/betterpickers/R$drawable;->dialog_full_holo_dark:I

    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDialogBackgroundResId:I

    .line 158
    iget v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 159
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTheme:I

    sget-object v4, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 162
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDialogBackground:I

    iget v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDialogBackgroundResId:I

    .line 164
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    sget v3, Lcom/codetroopers/betterpickers/R$layout;->number_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->done_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 171
    .local v1, "doneButton":Landroid/widget/Button;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->cancel_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, "cancelButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 174
    new-instance v3, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$1;-><init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 182
    new-instance v3, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;-><init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v3, Lcom/codetroopers/betterpickers/R$id;->number_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    iput-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    .line 219
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    invoke-virtual {v3, v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setSetButton(Landroid/widget/Button;)V

    .line 220
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mTheme:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setTheme(I)V

    .line 221
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDecimalVisibility:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setDecimalVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPlusMinusVisibility:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setPlusMinusVisibility(I)V

    .line 223
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mLabelText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setLabelText(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMinNumber:Ljava/math/BigDecimal;

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMinNumber:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setMin(Ljava/math/BigDecimal;)V

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMaxNumber:Ljava/math/BigDecimal;

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mMaxNumber:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setMax(Ljava/math/BigDecimal;)V

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentNumber:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentDecimal:Ljava/lang/Double;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mCurrentSign:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->setNumber(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;)V

    .line 232
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 233
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 247
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public setNumberPickerDialogHandlersV2(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "handlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;>;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mNumberPickerDialogHandlersV2:Ljava/util/Vector;

    .line 270
    return-void
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 254
    return-void
.end method
