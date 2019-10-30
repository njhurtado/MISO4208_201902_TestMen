.class public Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "HmsPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;
    }
.end annotation


# static fields
.field private static final PLUS_MINUS_VISIBILITY_KEY:Ljava/lang/String; = "HmsPickerDialogFragment_PlusMinusVisibilityKey"

.field private static final REFERENCE_KEY:Ljava/lang/String; = "HmsPickerDialogFragment_ReferenceKey"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "HmsPickerDialogFragment_ThemeResIdKey"


# instance fields
.field private mDialogBackgroundResId:I

.field private mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mHmsPickerDialogHandlerV2s:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;",
            ">;"
        }
    .end annotation
.end field

.field private mHours:I

.field private mMinutes:I

.field private mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

.field private mPlusMinusVisibility:I

.field private mReference:I

.field private mSeconds:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 31
    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mReference:I

    .line 32
    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTheme:I

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mHmsPickerDialogHandlerV2s:Ljava/util/Vector;

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPlusMinusVisibility:I

    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mHmsPickerDialogHandlerV2s:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mReference:I

    return v0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    return-object v0
.end method

.method public static newInstance(IILjava/lang/Integer;)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;
    .locals 4
    .param p0, "reference"    # I
    .param p1, "themeResId"    # I
    .param p2, "plusMinusVisibility"    # Ljava/lang/Integer;

    .prologue
    .line 50
    new-instance v1, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-direct {v1}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;-><init>()V

    .line 51
    .local v1, "frag":Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "HmsPickerDialogFragment_ReferenceKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v2, "HmsPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    if-eqz p2, :cond_0

    .line 55
    const-string v2, "HmsPickerDialogFragment_PlusMinusVisibilityKey"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    :cond_0
    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 71
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "HmsPickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "HmsPickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mReference:I

    .line 74
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "HmsPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const-string v2, "HmsPickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTheme:I

    .line 77
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "HmsPickerDialogFragment_PlusMinusVisibilityKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    const-string v2, "HmsPickerDialogFragment_PlusMinusVisibilityKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPlusMinusVisibility:I

    .line 81
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->setStyle(II)V

    .line 84
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 85
    sget v2, Lcom/codetroopers/betterpickers/R$drawable;->dialog_full_holo_dark:I

    iput v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mDialogBackgroundResId:I

    .line 87
    iget v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTheme:I

    sget-object v4, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 91
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpDialogBackground:I

    iget v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mDialogBackgroundResId:I

    .line 93
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    sget v3, Lcom/codetroopers/betterpickers/R$layout;->hms_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->done_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 102
    .local v1, "doneButton":Landroid/widget/Button;
    sget v3, Lcom/codetroopers/betterpickers/R$id;->cancel_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, "cancelButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 105
    new-instance v3, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$1;-><init>(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    new-instance v3, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;-><init>(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget v3, Lcom/codetroopers/betterpickers/R$id;->hms_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    iput-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    .line 137
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    invoke-virtual {v3, v1}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->setSetButton(Landroid/widget/Button;)V

    .line 138
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mHours:I

    iget v5, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mMinutes:I

    iget v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mSeconds:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->setTime(III)V

    .line 139
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mTheme:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->setTheme(I)V

    .line 140
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    iget v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPlusMinusVisibility:I

    invoke-virtual {v3, v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->setPlusMinusVisibility(I)V

    .line 142
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 144
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 151
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public setHmsPickerDialogHandlersV2(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "handlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;>;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mHmsPickerDialogHandlerV2s:Ljava/util/Vector;

    .line 171
    return-void
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 158
    return-void
.end method

.method public setTime(III)V
    .locals 1
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mHours:I

    .line 175
    iput p2, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mMinutes:I

    .line 176
    iput p3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mSeconds:I

    .line 177
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->mPicker:Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->setTime(III)V

    .line 180
    :cond_0
    return-void
.end method
