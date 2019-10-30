.class Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
.super Ljava/lang/Object;
.source "BudgetAmountEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BudgetAmountViewHolder"
.end annotation


# instance fields
.field amountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f1
    .end annotation
.end field

.field budgetAccountSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f0
    .end annotation
.end field

.field currencySymbolTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090079
    .end annotation
.end field

.field itemView:Landroid/view/View;

.field removeItemBtn:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003d
    .end annotation
.end field

.field final synthetic this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 240
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->itemView:Landroid/view/View;

    .line 242
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 243
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->amountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Landroid/inputmethodservice/KeyboardView;)V

    .line 246
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->budgetAccountSpinner:Landroid/widget/Spinner;

    invoke-static {p1}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->access$000(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 248
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->budgetAccountSpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$1;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$1;-><init>(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 262
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->removeItemBtn:Landroid/widget/ImageView;

    new-instance v1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;-><init>(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method


# virtual methods
.method public bindViews(Lorg/gnucash/android/model/BudgetAmount;)V
    .locals 3
    .param p1, "budgetAmount"    # Lorg/gnucash/android/model/BudgetAmount;

    .prologue
    .line 272
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->amountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {p1}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setValue(Ljava/math/BigDecimal;)V

    .line 273
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->budgetAccountSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->access$000(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    return-void
.end method
