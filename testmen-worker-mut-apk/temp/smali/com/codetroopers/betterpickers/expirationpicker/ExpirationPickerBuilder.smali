.class public Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
.super Ljava/lang/Object;
.source "ExpirationPickerBuilder.java"


# instance fields
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

.field private mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mReference:I

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private minimumYear:Ljava/lang/Integer;

.field private monthOfYear:Ljava/lang/Integer;

.field private styleResId:Ljava/lang/Integer;

.field private targetFragment:Landroid/support/v4/app/Fragment;

.field private year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mReference:I

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mExpirationPickerDialogHandlers:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addExpirationPickerDialogHandler(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$ExpirationPickerDialogHandler;)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$ExpirationPickerDialogHandler;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mExpirationPickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p0
.end method

.method public removeExpirationPickerDialogHandler(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$ExpirationPickerDialogHandler;)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment$ExpirationPickerDialogHandler;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mExpirationPickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public setFragmentManager(Landroid/support/v4/app/FragmentManager;)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 0
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    .line 36
    return-object p0
.end method

.method public setMinYear(I)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->minimumYear:Ljava/lang/Integer;

    .line 81
    return-object p0
.end method

.method public setMonthOfYear(I)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 1
    .param p1, "monthOfYear"    # I

    .prologue
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->monthOfYear:Ljava/lang/Integer;

    .line 94
    return-object p0
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 0
    .param p1, "onDismissListener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 161
    return-object p0
.end method

.method public setReference(I)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 0
    .param p1, "reference"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mReference:I

    .line 70
    return-object p0
.end method

.method public setStyleResId(I)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->styleResId:Ljava/lang/Integer;

    .line 48
    return-object p0
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 0
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    .line 59
    return-object p0
.end method

.method public setYear(I)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->year:Ljava/lang/Integer;

    .line 106
    return-object p0
.end method

.method public show()V
    .locals 8

    .prologue
    .line 137
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->styleResId:Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 138
    :cond_0
    const-string v3, "ExpirationPickerBuilder"

    const-string v4, "setFragmentManager() and setStyleResId() must be called."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 142
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    const-string v4, "expiration_dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 143
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 145
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 147
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 149
    iget v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mReference:I

    iget-object v4, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->styleResId:Ljava/lang/Integer;

    .line 150
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->monthOfYear:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->year:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->minimumYear:Ljava/lang/Integer;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->newInstance(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;

    move-result-object v0

    .line 151
    .local v0, "fragment":Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_3

    .line 152
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 154
    :cond_3
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mExpirationPickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->setExpirationPickerDialogHandlers(Ljava/util/Vector;)V

    .line 155
    iget-object v3, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerBuilder;->mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V

    .line 156
    const-string v3, "expiration_dialog"

    invoke-virtual {v0, v1, v3}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method
