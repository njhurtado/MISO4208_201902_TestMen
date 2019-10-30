.class public Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DatePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;
    }
.end annotation


# static fields
.field private static final DAY_KEY:Ljava/lang/String; = "DatePickerDialogFragment_DayKey"

.field private static final MONTH_KEY:Ljava/lang/String; = "DatePickerDialogFragment_MonthKey"

.field private static final REFERENCE_KEY:Ljava/lang/String; = "DatePickerDialogFragment_ReferenceKey"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "DatePickerDialogFragment_ThemeResIdKey"

.field private static final YEAR_KEY:Ljava/lang/String; = "DatePickerDialogFragment_YearKey"

.field private static final YEAR_OPTIONAL_KEY:Ljava/lang/String; = "DatePickerDialogFragment_YearOptionalKey"


# instance fields
.field private mDatePickerDialogHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDayOfMonth:I

.field private mDialogBackgroundResId:I

.field private mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mMonthOfYear:I

.field private mPicker:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

.field private mReference:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I

.field private mYear:I

.field private mYearOptional:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 34
    iput v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mMonthOfYear:I

    .line 35
    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDayOfMonth:I

    .line 36
    iput v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mYear:I

    .line 38
    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mYearOptional:Z

    .line 40
    iput v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mReference:I

    .line 41
    iput v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTheme:I

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDatePickerDialogHandlers:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDatePickerDialogHandlers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mReference:I

    return v0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    return-object v0
.end method

.method public static newInstance(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;
    .locals 4
    .param p0, "reference"    # I
    .param p1, "themeResId"    # I
    .param p2, "monthOfYear"    # Ljava/lang/Integer;
    .param p3, "dayOfMonth"    # Ljava/lang/Integer;
    .param p4, "year"    # Ljava/lang/Integer;
    .param p5, "yearOptional"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    new-instance v1, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-direct {v1}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;-><init>()V

    .line 60
    .local v1, "frag":Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "DatePickerDialogFragment_ReferenceKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v2, "DatePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    if-eqz p2, :cond_0

    .line 64
    const-string v2, "DatePickerDialogFragment_MonthKey"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    :cond_0
    if-eqz p3, :cond_1

    .line 67
    const-string v2, "DatePickerDialogFragment_DayKey"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    :cond_1
    if-eqz p4, :cond_2

    .line 70
    const-string v2, "DatePickerDialogFragment_YearKey"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    :cond_2
    const-string v2, "DatePickerDialogFragment_YearOptionalKey"

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 88
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "DatePickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "DatePickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mReference:I

    .line 91
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "DatePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const-string v2, "DatePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTheme:I

    .line 94
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "DatePickerDialogFragment_MonthKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const-string v2, "DatePickerDialogFragment_MonthKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mMonthOfYear:I

    .line 97
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "DatePickerDialogFragment_DayKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    const-string v2, "DatePickerDialogFragment_DayKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDayOfMonth:I

    .line 100
    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "DatePickerDialogFragment_YearKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    const-string v2, "DatePickerDialogFragment_YearKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mYear:I

    .line 103
    :cond_4
    if-eqz v1, :cond_5

    const-string v2, "DatePickerDialogFragment_YearOptionalKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    const-string v2, "DatePickerDialogFragment_YearOptionalKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mYearOptional:Z

    .line 107
    :cond_5
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->setStyle(II)V

    .line 110
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 111
    sget v2, Lcom/codetroopers/betterpickers/R$drawable;->dialog_full_holo_dark:I

    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDialogBackgroundResId:I

    .line 113
    iget v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 114
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTheme:I

    sget-object v4, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 116
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDialogBackground:I

    iget v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDialogBackgroundResId:I

    .line 118
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    sget v3, Lcom/codetroopers/betterpickers/R$layout;->date_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 124
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->done_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 125
    .local v1, "doneButton":Landroid/widget/Button;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->cancel_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 127
    .local v0, "cancelButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    new-instance v3, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$1;-><init>(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 136
    new-instance v3, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;-><init>(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v3, Lcom/codetroopers/betterpickers/R$id;->date_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iput-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    .line 156
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-virtual {v3, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setSetButton(Landroid/widget/Button;)V

    .line 157
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mYear:I

    iget v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mMonthOfYear:I

    iget v6, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDayOfMonth:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setDate(III)V

    .line 158
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-boolean v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mYearOptional:Z

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setYearOptional(Z)V

    .line 159
    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mTheme:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setTheme(I)V

    .line 161
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 163
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 169
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public setDatePickerDialogHandlers(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "handlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;>;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDatePickerDialogHandlers:Ljava/util/Vector;

    .line 185
    return-void
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 176
    return-void
.end method
