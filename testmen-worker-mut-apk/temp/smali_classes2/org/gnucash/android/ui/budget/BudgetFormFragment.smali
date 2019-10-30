.class public Lorg/gnucash/android/ui/budget/BudgetFormFragment;
.super Landroid/support/v4/app/Fragment;
.source "BudgetFormFragment.java"

# interfaces
.implements Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;
.implements Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final REQUEST_EDIT_BUDGET_AMOUNTS:I = 0xba


# instance fields
.field private mAccountsCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mAddBudgetAmount:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090035
    .end annotation
.end field

.field private mBudget:Lorg/gnucash/android/model/Budget;

.field mBudgetAccountSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f0
    .end annotation
.end field

.field mBudgetAmountInput:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f1
    .end annotation
.end field

.field mBudgetAmountLayout:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090046
    .end annotation
.end field

.field private mBudgetAmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation
.end field

.field mBudgetNameInput:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f2
    .end annotation
.end field

.field private mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

.field mDescriptionInput:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f8
    .end annotation
.end field

.field mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

.field mKeyboardView:Landroid/inputmethodservice/KeyboardView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090051
    .end annotation
.end field

.field mNameTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090153
    .end annotation
.end field

.field mRecurrenceInput:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fc
    .end annotation
.end field

.field mRecurrenceRule:Ljava/lang/String;

.field private mStartDate:Ljava/util/Calendar;

.field mStartDateInput:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ff
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 94
    new-instance v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    return-void
.end method

.method private canSave()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    iget-object v4, v4, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    iget-object v4, v4, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    iget v4, v4, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    if-gtz v4, :cond_3

    .line 200
    :cond_1
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Set a number periods in the recurrence dialog to save the budget"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 232
    :cond_2
    :goto_0
    return v1

    .line 206
    :cond_3
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->extractBudgetAmounts()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    .line 207
    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetNameInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "budgetName":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceRule:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v3

    .line 212
    .local v1, "canSave":Z
    :goto_1
    if-nez v1, :cond_2

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 214
    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mNameTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const-string v5, "A name is required"

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mNameTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4, v3}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 220
    :goto_2
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountInput:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    const-string v4, "Enter an amount for the budget"

    invoke-virtual {v3, v4}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setError(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Add budget amounts in order to save the budget"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 226
    :cond_4
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceRule:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 227
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Set a repeat pattern to create a budget!"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v1    # "canSave":Z
    :cond_5
    move v1, v2

    .line 210
    goto :goto_1

    .line 217
    .restart local v1    # "canSave":Z
    :cond_6
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mNameTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_2
.end method

.method private extractBudgetAmounts()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v5, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountInput:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v4

    .line 176
    .local v4, "value":Ljava/math/BigDecimal;
    if-nez v4, :cond_0

    .line 177
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    .line 187
    :goto_0
    return-object v3

    .line 179
    :cond_0
    iget-object v5, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v3, "budgetAmounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/BudgetAmount;>;"
    new-instance v1, Lorg/gnucash/android/model/Money;

    sget-object v5, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v1, v4, v5}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 182
    .local v1, "amount":Lorg/gnucash/android/model/Money;
    iget-object v5, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v6, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "accountUID":Ljava/lang/String;
    new-instance v2, Lorg/gnucash/android/model/BudgetAmount;

    invoke-direct {v2, v1, v0}, Lorg/gnucash/android/model/BudgetAmount;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 184
    .local v2, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0    # "accountUID":Ljava/lang/String;
    .end local v1    # "amount":Lorg/gnucash/android/model/Money;
    .end local v2    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v3    # "budgetAmounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/BudgetAmount;>;"
    :cond_1
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private initViews(Lorg/gnucash/android/model/Budget;)V
    .locals 3
    .param p1, "budget"    # Lorg/gnucash/android/model/Budget;

    .prologue
    .line 156
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetNameInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mDescriptionInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Recurrence;->getRuleString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "recurrenceRuleString":Ljava/lang/String;
    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceRule:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceInput:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Recurrence;->getRepeatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getCompactedBudgetAmounts()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    .line 165
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->toggleAmountInputVisibility()V

    .line 166
    return-void
.end method

.method private saveBudget()V
    .locals 6

    .prologue
    .line 239
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->canSave()Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetNameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    if-nez v2, :cond_1

    .line 245
    new-instance v2, Lorg/gnucash/android/model/Budget;

    invoke-direct {v2, v0}, Lorg/gnucash/android/model/Budget;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    .line 251
    :goto_1
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->extractBudgetAmounts()Ljava/util/ArrayList;

    .line 252
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Budget;->setBudgetAmounts(Ljava/util/List;)V

    .line 254
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mDescriptionInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Budget;->setDescription(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-static {v2}, Lorg/gnucash/android/ui/util/RecurrenceParser;->parse(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)Lorg/gnucash/android/model/Recurrence;

    move-result-object v1

    .line 257
    .local v1, "recurrence":Lorg/gnucash/android/model/Recurrence;
    new-instance v2, Ljava/sql/Timestamp;

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Recurrence;->setPeriodStart(Ljava/sql/Timestamp;)V

    .line 258
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v2, v1}, Lorg/gnucash/android/model/Budget;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    .line 260
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    sget-object v4, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v2, v3, v4}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->addRecord(Lorg/gnucash/android/model/Budget;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 261
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 247
    .end local v1    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    :cond_1
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v2, v0}, Lorg/gnucash/android/model/Budget;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private toggleAmountInputVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 350
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAddBudgetAmount:Landroid/widget/Button;

    const-string v2, "Edit Budget Amounts"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAddBudgetAmount:Landroid/widget/Button;

    const-string v2, "Add Budget Amounts"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BudgetAmount;

    .line 357
    .local v0, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountInput:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setValue(Ljava/math/BigDecimal;)V

    .line 358
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAccountSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAccountsCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->setHasOptionsMenu(Z)V

    .line 135
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAccountSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAccountsCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "budget_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "budgetUID":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 138
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    invoke-virtual {v2, v1}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Budget;

    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-direct {p0, v2}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->initViews(Lorg/gnucash/android/model/Budget;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 141
    .local v0, "actionbar":Landroid/support/v7/app/ActionBar;
    sget-boolean v2, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 142
    :cond_1
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudget:Lorg/gnucash/android/model/Budget;

    if-nez v2, :cond_2

    .line 143
    const-string v2, "Create Budget"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceInput:Landroid/widget/TextView;

    new-instance v4, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;

    .line 148
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    iget-object v5, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceRule:Ljava/lang/String;

    invoke-direct {v4, v2, v5, p0}, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;-><init>(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;)V

    .line 147
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void

    .line 145
    :cond_2
    const-string v2, "Edit Budget"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 332
    const/16 v1, 0xba

    if-ne p1, v1, :cond_1

    .line 333
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 334
    const-string v1, "budget_amount_list"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 335
    .local v0, "budgetAmounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/BudgetAmount;>;"
    if-eqz v0, :cond_0

    .line 336
    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    .line 337
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->toggleAmountInputVisibility()V

    .line 343
    .end local v0    # "budgetAmounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/BudgetAmount;>;"
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClickBudgetStartDate(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900ff
        }
    .end annotation

    .prologue
    .line 281
    const-wide/16 v2, 0x0

    .line 283
    .local v2, "dateMillis":J
    :try_start_0
    sget-object v9, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 284
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 288
    .end local v1    # "date":Ljava/util/Date;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 289
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 291
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 292
    .local v8, "year":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 293
    .local v7, "monthOfYear":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 294
    .local v5, "dayOfMonth":I
    new-instance v4, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-direct {v4}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;-><init>()V

    .line 295
    .local v4, "datePickerDialog":Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    invoke-virtual {v4, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setOnDateSetListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 296
    invoke-virtual {v4, v8, v7, v5}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setPreselectedDate(III)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 297
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    const-string v10, "date_picker_fragment"

    invoke-virtual {v4, v9, v10}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 298
    return-void

    .line 285
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v4    # "datePickerDialog":Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .end local v5    # "dayOfMonth":I
    .end local v7    # "monthOfYear":I
    .end local v8    # "year":I
    :catch_0
    move-exception v6

    .line 286
    .local v6, "e":Ljava/text/ParseException;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Error converting input time to Date object"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-static {}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDate:Ljava/util/Calendar;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    .line 123
    const-string v1, "(is_hidden = 0 )"

    .line 124
    .local v1, "conditions":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 125
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFavoriteAndFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    .local v0, "accountCursor":Landroid/database/Cursor;
    new-instance v2, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAccountsCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    .line 127
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 266
    const v0, 0x7f0c0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 267
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    const v1, 0x7f0b0056

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 111
    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountInput:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Landroid/inputmethodservice/KeyboardView;)V

    .line 113
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDateInput:Landroid/widget/TextView;

    sget-object v2, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-object v0
.end method

.method public onDateSet(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;III)V
    .locals 4
    .param p1, "dialog"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 323
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 324
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDateInput:Landroid/widget/TextView;

    sget-object v2, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 326
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 327
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 328
    return-void
.end method

.method public onOpenBudgetAmountEditor(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090035
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->BUDGET_AMOUNT_EDITOR:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->extractBudgetAmounts()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    .line 305
    const-string v1, "budget_amount_list"

    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 306
    const/16 v1, 0xba

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 273
    :pswitch_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->saveBudget()V

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x7f090141
        :pswitch_0
    .end packed-switch
.end method

.method public onRecurrenceSet(Ljava/lang/String;)V
    .locals 5
    .param p1, "rrule"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceRule:Ljava/lang/String;

    .line 312
    const v1, 0x7f0f010a

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "repeatString":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceRule:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->getRepeatString(Landroid/content/Context;Landroid/content/res/Resources;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;Z)Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceInput:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method
