.class Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;
.super Ljava/lang/Object;
.source "RecurrencePickerDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "minMaxTextWatcher"
.end annotation


# instance fields
.field private mDefault:I

.field private mMax:I

.field private mMin:I

.field final synthetic this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;


# direct methods
.method public constructor <init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
    .param p2, "min"    # I
    .param p3, "defaultInt"    # I
    .param p4, "max"    # I

    .prologue
    .line 262
    iput-object p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->mMin:I

    .line 264
    iput p4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->mMax:I

    .line 265
    iput p3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->mDefault:I

    .line 266
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 274
    .local v1, "updated":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 279
    .local v2, "value":I
    :goto_0
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->mMin:I

    if-ge v2, v3, :cond_2

    .line 280
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->mMin:I

    .line 281
    const/4 v1, 0x1

    .line 288
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 289
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 290
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 293
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V

    .line 294
    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->onChange(I)V

    .line 295
    return-void

    .line 275
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->mDefault:I

    .restart local v2    # "value":I
    goto :goto_0

    .line 282
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->mMax:I

    if-le v2, v3, :cond_0

    .line 283
    const/4 v1, 0x1

    .line 284
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;->mMax:I

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 305
    return-void
.end method

.method onChange(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 301
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 309
    return-void
.end method
