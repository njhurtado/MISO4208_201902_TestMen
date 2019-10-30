.class public Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
.super Ljava/lang/Object;
.source "DatePickerBuilder.java"


# instance fields
.field private dayOfMonth:Ljava/lang/Integer;

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

.field private mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mReference:I

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private monthOfYear:Ljava/lang/Integer;

.field private styleResId:Ljava/lang/Integer;

.field private targetFragment:Landroid/support/v4/app/Fragment;

.field private year:Ljava/lang/Integer;

.field private yearOptional:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->yearOptional:Ljava/lang/Boolean;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mReference:I

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mDatePickerDialogHandlers:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addDatePickerDialogHandler(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mDatePickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 132
    return-object p0
.end method

.method public removeDatePickerDialogHandler(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mDatePickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 143
    return-object p0
.end method

.method public setDayOfMonth(I)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->dayOfMonth:Ljava/lang/Integer;

    .line 96
    return-object p0
.end method

.method public setFragmentManager(Landroid/support/v4/app/FragmentManager;)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 0
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    .line 37
    return-object p0
.end method

.method public setMonthOfYear(I)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 1
    .param p1, "monthOfYear"    # I

    .prologue
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->monthOfYear:Ljava/lang/Integer;

    .line 84
    return-object p0
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 0
    .param p1, "onDismissListener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 149
    return-object p0
.end method

.method public setReference(I)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 0
    .param p1, "reference"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mReference:I

    .line 71
    return-object p0
.end method

.method public setStyleResId(I)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->styleResId:Ljava/lang/Integer;

    .line 49
    return-object p0
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 0
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    .line 60
    return-object p0
.end method

.method public setYear(I)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->year:Ljava/lang/Integer;

    .line 108
    return-object p0
.end method

.method public setYearOptional(Z)Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;
    .locals 1
    .param p1, "yearOptional"    # Z

    .prologue
    .line 118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->yearOptional:Ljava/lang/Boolean;

    .line 119
    return-object p0
.end method

.method public show()V
    .locals 9

    .prologue
    .line 156
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->styleResId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    const-string v0, "DatePickerBuilder"

    const-string v1, "setFragmentManager() and setStyleResId() must be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 161
    .local v7, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "date_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    .line 162
    .local v8, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v8, :cond_2

    .line 163
    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 164
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 166
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mReference:I

    iget-object v1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->styleResId:Ljava/lang/Integer;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->monthOfYear:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->dayOfMonth:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->year:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->yearOptional:Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->newInstance(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    move-result-object v6

    .line 170
    .local v6, "fragment":Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mDatePickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->setDatePickerDialogHandlers(Ljava/util/Vector;)V

    .line 174
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerBuilder;->mOnDismissListener:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-virtual {v6, v0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)V

    .line 175
    const-string v0, "date_dialog"

    invoke-virtual {v6, v7, v0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method
