.class public Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
.super Ljava/lang/Object;
.source "NumberPickerBuilder.java"


# instance fields
.field private currentDecimalValue:Ljava/lang/Double;

.field private currentNumberValue:Ljava/lang/Integer;

.field private currentSignValue:Ljava/lang/Integer;

.field private decimalVisibility:Ljava/lang/Integer;

.field private labelText:Ljava/lang/String;

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

.field private mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mReference:I

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private maxNumber:Ljava/math/BigDecimal;

.field private minNumber:Ljava/math/BigDecimal;

.field private plusMinusVisibility:Ljava/lang/Integer;

.field private styleResId:Ljava/lang/Integer;

.field private targetFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->mNumberPickerDialogHandlersV2:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addNumberPickerDialogHandler(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->mNumberPickerDialogHandlersV2:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 188
    return-object p0
.end method

.method public removeNumberPickerDialogHandler(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->mNumberPickerDialogHandlersV2:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 199
    return-object p0
.end method

.method public setCurrentNumber(Ljava/lang/Integer;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 1
    .param p1, "number"    # Ljava/lang/Integer;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentSignValue:Ljava/lang/Integer;

    .line 91
    :goto_0
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentNumberValue:Ljava/lang/Integer;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentDecimalValue:Ljava/lang/Double;

    .line 94
    :cond_0
    return-object p0

    .line 87
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentSignValue:Ljava/lang/Integer;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0
.end method

.method public setCurrentNumber(Ljava/math/BigDecimal;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 4
    .param p1, "number"    # Ljava/math/BigDecimal;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-ltz v1, :cond_1

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentSignValue:Ljava/lang/Integer;

    .line 108
    :goto_0
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    .line 109
    .local v0, "numberInput":[Ljava/math/BigDecimal;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentNumberValue:Ljava/lang/Integer;

    .line 110
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentDecimalValue:Ljava/lang/Double;

    .line 112
    .end local v0    # "numberInput":[Ljava/math/BigDecimal;
    :cond_0
    return-object p0

    .line 105
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentSignValue:Ljava/lang/Integer;

    .line 106
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0
.end method

.method public setDecimalVisibility(I)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 1
    .param p1, "decimalVisibility"    # I

    .prologue
    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->decimalVisibility:Ljava/lang/Integer;

    .line 162
    return-object p0
.end method

.method public setFragmentManager(Landroid/support/v4/app/FragmentManager;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 0
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    .line 42
    return-object p0
.end method

.method public setLabelText(Ljava/lang/String;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 0
    .param p1, "labelText"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->labelText:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setMaxNumber(Ljava/math/BigDecimal;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 0
    .param p1, "maxNumber"    # Ljava/math/BigDecimal;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->maxNumber:Ljava/math/BigDecimal;

    .line 134
    return-object p0
.end method

.method public setMinNumber(Ljava/math/BigDecimal;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 0
    .param p1, "minNumber"    # Ljava/math/BigDecimal;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->minNumber:Ljava/math/BigDecimal;

    .line 123
    return-object p0
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 0
    .param p1, "onDismissListener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 231
    return-object p0
.end method

.method public setPlusMinusVisibility(I)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 1
    .param p1, "plusMinusVisibility"    # I

    .prologue
    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->plusMinusVisibility:Ljava/lang/Integer;

    .line 148
    return-object p0
.end method

.method public setReference(I)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 0
    .param p1, "reference"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->mReference:I

    .line 76
    return-object p0
.end method

.method public setStyleResId(I)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->styleResId:Ljava/lang/Integer;

    .line 54
    return-object p0
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;
    .locals 0
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    .line 65
    return-object p0
.end method

.method public show()V
    .locals 13

    .prologue
    .line 206
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->styleResId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    const-string v0, "NumberPickerBuilder"

    const-string v1, "setFragmentManager() and setStyleResId() must be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 211
    .local v11, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "number_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 212
    .local v12, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v12, :cond_2

    .line 213
    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 214
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 216
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 218
    iget v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->mReference:I

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->styleResId:Ljava/lang/Integer;

    .line 219
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->minNumber:Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->maxNumber:Ljava/math/BigDecimal;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->plusMinusVisibility:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->decimalVisibility:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->labelText:Ljava/lang/String;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentNumberValue:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentDecimalValue:Ljava/lang/Double;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->currentSignValue:Ljava/lang/Integer;

    invoke-static/range {v0 .. v9}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->newInstance(IILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;)Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    move-result-object v10

    .line 221
    .local v10, "fragment":Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->mNumberPickerDialogHandlersV2:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->setNumberPickerDialogHandlersV2(Ljava/util/Vector;)V

    .line 225
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerBuilder;->mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-virtual {v10, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V

    .line 226
    const-string v0, "number_dialog"

    invoke-virtual {v10, v11, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method
