.class public Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TimePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;
    }
.end annotation


# static fields
.field private static final REFERENCE_KEY:Ljava/lang/String; = "TimePickerDialogFragment_ReferenceKey"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "TimePickerDialogFragment_ThemeResIdKey"


# instance fields
.field private mDialogBackgroundResId:I

.field private mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mPicker:Lcom/codetroopers/betterpickers/timepicker/TimePicker;

.field private mReference:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I

.field private mTimePickerDialogHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 30
    iput v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mReference:I

    .line 31
    iput v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTimePickerDialogHandlers:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTimePickerDialogHandlers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mReference:I

    return v0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Lcom/codetroopers/betterpickers/timepicker/TimePicker;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    return-object v0
.end method

.method public static newInstance(II)Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;
    .locals 3
    .param p0, "reference"    # I
    .param p1, "themeResId"    # I

    .prologue
    .line 45
    new-instance v1, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-direct {v1}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;-><init>()V

    .line 46
    .local v1, "frag":Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "TimePickerDialogFragment_ReferenceKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v2, "TimePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "TimePickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "TimePickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mReference:I

    .line 66
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "TimePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const-string v2, "TimePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    .line 70
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->setStyle(II)V

    .line 73
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 74
    sget v2, Lcom/codetroopers/betterpickers/R$drawable;->dialog_full_holo_dark:I

    iput v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mDialogBackgroundResId:I

    .line 76
    iget v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    sget-object v4, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 80
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDialogBackground:I

    iget v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mDialogBackgroundResId:I

    .line 82
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    sget v3, Lcom/codetroopers/betterpickers/R$layout;->time_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 87
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->done_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 88
    .local v1, "doneButton":Landroid/widget/Button;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->cancel_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v3, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$1;-><init>(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 98
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 99
    new-instance v3, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;-><init>(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v3, Lcom/codetroopers/betterpickers/R$id;->time_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    iput-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    .line 121
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    invoke-virtual {v3, v1}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setSetButton(Landroid/widget/Button;)V

    .line 122
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->setTheme(I)V

    .line 124
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 126
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 132
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 157
    return-void
.end method

.method public setTimePickerDialogHandlers(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "handlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;>;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->mTimePickerDialogHandlers:Ljava/util/Vector;

    .line 152
    return-void
.end method
