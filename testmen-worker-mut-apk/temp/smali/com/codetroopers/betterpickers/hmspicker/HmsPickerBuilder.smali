.class public Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
.super Ljava/lang/Object;
.source "HmsPickerBuilder.java"


# instance fields
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

.field private mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mReference:I

.field private mSeconds:I

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private plusMinusVisibility:Ljava/lang/Integer;

.field private styleResId:Ljava/lang/Integer;

.field private targetFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mHmsPickerDialogHandlerV2s:Ljava/util/Vector;

    return-void
.end method

.method private static bounded(III)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 182
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addHmsPickerDialogHandler(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mHmsPickerDialogHandlerV2s:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 98
    return-object p0
.end method

.method public removeHmsPickerDialogHandler(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mHmsPickerDialogHandlerV2s:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 109
    return-object p0
.end method

.method public setFragmentManager(Landroid/support/v4/app/FragmentManager;)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 0
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    .line 51
    return-object p0
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 0
    .param p1, "onDismissListener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 187
    return-object p0
.end method

.method public setPlusMinusVisibility(I)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 1
    .param p1, "plusMinusVisibility"    # I

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->plusMinusVisibility:Ljava/lang/Integer;

    .line 39
    return-object p0
.end method

.method public setReference(I)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 0
    .param p1, "reference"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mReference:I

    .line 85
    return-object p0
.end method

.method public setStyleResId(I)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->styleResId:Ljava/lang/Integer;

    .line 63
    return-object p0
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 0
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    .line 74
    return-object p0
.end method

.method public setTime(III)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 3
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I

    .prologue
    const/16 v2, 0x63

    const/4 v1, 0x0

    .line 121
    invoke-static {p1, v1, v2}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->bounded(III)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mHours:I

    .line 122
    invoke-static {p2, v1, v2}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->bounded(III)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mMinutes:I

    .line 123
    invoke-static {p3, v1, v2}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->bounded(III)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mSeconds:I

    .line 124
    return-object p0
.end method

.method public setTimeInMilliseconds(J)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 3
    .param p1, "timeInMilliseconds"    # J

    .prologue
    .line 149
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->setTimeInSeconds(I)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTimeInSeconds(I)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;
    .locals 5
    .param p1, "timeInSeconds"    # I

    .prologue
    .line 134
    div-int/lit16 v0, p1, 0xe10

    .line 135
    .local v0, "hours":I
    rem-int/lit16 v2, p1, 0xe10

    .line 136
    .local v2, "remaining":I
    div-int/lit8 v1, v2, 0x3c

    .line 137
    .local v1, "minutes":I
    rem-int/lit8 v3, v2, 0x3c

    .line 139
    .local v3, "seconds":I
    invoke-virtual {p0, v0, v1, v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->setTime(III)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;

    move-result-object v4

    return-object v4
.end method

.method public show()V
    .locals 6

    .prologue
    .line 156
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->styleResId:Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 157
    :cond_0
    const-string v3, "HmsPickerBuilder"

    const-string v4, "setFragmentManager() and setStyleResId() must be called."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 161
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    const-string v4, "hms_dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 162
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_2

    .line 163
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 164
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 166
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    iget v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mReference:I

    iget-object v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->styleResId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->plusMinusVisibility:Ljava/lang/Integer;

    invoke-static {v3, v4, v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->newInstance(IILjava/lang/Integer;)Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    move-result-object v0

    .line 169
    .local v0, "fragment":Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mHmsPickerDialogHandlerV2s:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->setHmsPickerDialogHandlersV2(Ljava/util/Vector;)V

    .line 174
    iget v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mHours:I

    iget v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mMinutes:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mSeconds:I

    or-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 175
    iget v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mHours:I

    iget v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mMinutes:I

    iget v5, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mSeconds:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->setTime(III)V

    .line 177
    :cond_4
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerBuilder;->mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V

    .line 178
    const-string v3, "hms_dialog"

    invoke-virtual {v0, v1, v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method
