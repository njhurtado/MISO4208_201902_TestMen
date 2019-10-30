.class public Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ExpirationPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$ExpirationPickerDialogHandler;
    }
.end annotation


# static fields
.field private static final MINIMUM_YEAR_KEY:Ljava/lang/String; = "ExpirationPickerDialogFragment_MinimumYearKey"

.field private static final MONTH_KEY:Ljava/lang/String; = "ExpirationPickerDialogFragment_MonthKey"

.field private static final REFERENCE_KEY:Ljava/lang/String; = "ExpirationPickerDialogFragment_ReferenceKey"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "ExpirationPickerDialogFragment_ThemeResIdKey"

.field private static final YEAR_KEY:Ljava/lang/String; = "ExpirationPickerDialogFragment_YearKey"


# instance fields
.field private mDialogBackgroundResId:I

.field private mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mExpirationPickerDialogHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$ExpirationPickerDialogHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimumYear:I

.field private mMonthOfYear:I

.field private mPicker:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

.field private mReference:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 33
    iput v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mMonthOfYear:I

    .line 34
    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mYear:I

    .line 35
    iput v1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mMinimumYear:I

    .line 37
    iput v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mReference:I

    .line 38
    iput v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTheme:I

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mExpirationPickerDialogHandlers:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mExpirationPickerDialogHandlers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mReference:I

    return v0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    return-object v0
.end method

.method public static newInstance(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;
    .locals 4
    .param p0, "reference"    # I
    .param p1, "themeResId"    # I
    .param p2, "monthOfYear"    # Ljava/lang/Integer;
    .param p3, "year"    # Ljava/lang/Integer;
    .param p4, "minimumYear"    # Ljava/lang/Integer;

    .prologue
    .line 55
    new-instance v1, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;

    invoke-direct {v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;-><init>()V

    .line 56
    .local v1, "frag":Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ExpirationPickerDialogFragment_ReferenceKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v2, "ExpirationPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    if-eqz p2, :cond_0

    .line 60
    const-string v2, "ExpirationPickerDialogFragment_MonthKey"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    :cond_0
    if-eqz p3, :cond_1

    .line 63
    const-string v2, "ExpirationPickerDialogFragment_YearKey"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    :cond_1
    if-eqz p4, :cond_2

    .line 66
    const-string v2, "ExpirationPickerDialogFragment_MinimumYearKey"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    :cond_2
    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 82
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "ExpirationPickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "ExpirationPickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mReference:I

    .line 85
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "ExpirationPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "ExpirationPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTheme:I

    .line 88
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "ExpirationPickerDialogFragment_MonthKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const-string v2, "ExpirationPickerDialogFragment_MonthKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mMonthOfYear:I

    .line 91
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "ExpirationPickerDialogFragment_YearKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    const-string v2, "ExpirationPickerDialogFragment_YearKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mYear:I

    .line 95
    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "ExpirationPickerDialogFragment_MinimumYearKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    const-string v2, "ExpirationPickerDialogFragment_MinimumYearKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mMinimumYear:I

    .line 99
    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->setStyle(II)V

    .line 102
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 103
    sget v2, Lcom/codetroopers/betterpickers/R$drawable;->dialog_full_holo_dark:I

    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mDialogBackgroundResId:I

    .line 105
    iget v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 106
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTheme:I

    sget-object v4, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 109
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDialogBackground:I

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mDialogBackgroundResId:I

    .line 111
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    sget v3, Lcom/codetroopers/betterpickers/R$layout;->expiration_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->done_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 119
    .local v1, "doneButton":Landroid/widget/Button;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->cancel_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    .local v0, "cancelButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    new-instance v3, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$1;-><init>(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    new-instance v3, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$2;-><init>(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget v3, Lcom/codetroopers/betterpickers/R$id;->expiration_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iput-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    .line 152
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-virtual {v3, v1}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setSetButton(Landroid/widget/Button;)V

    .line 153
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mTheme:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setTheme(I)V

    .line 155
    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mMinimumYear:I

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mMinimumYear:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setMinYear(I)V

    .line 159
    :cond_0
    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mMonthOfYear:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mYear:I

    if-eqz v3, :cond_2

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mYear:I

    iget v5, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mMonthOfYear:I

    invoke-virtual {v3, v4, v5}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setExpiration(II)V

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 164
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 171
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public setExpirationPickerDialogHandlers(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$ExpirationPickerDialogHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "handlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$ExpirationPickerDialogHandler;>;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mExpirationPickerDialogHandlers:Ljava/util/Vector;

    .line 195
    return-void
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 178
    return-void
.end method
