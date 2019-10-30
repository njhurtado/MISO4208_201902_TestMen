.class Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
.super Ljava/lang/Object;
.source "SplitEditorFragment.java"

# interfaces
.implements Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitViewHolder"
.end annotation


# instance fields
.field accountsSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ed
    .end annotation
.end field

.field quantity:Lorg/gnucash/android/model/Money;

.field removeSplitButton:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003e
    .end annotation
.end field

.field splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fd
    .end annotation
.end field

.field splitCurrencyTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d1
    .end annotation
.end field

.field splitMemoEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fe
    .end annotation
.end field

.field splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090041
    .end annotation
.end field

.field splitUidTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d4
    .end annotation
.end field

.field splitView:Landroid/view/View;

.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Landroid/view/View;Lorg/gnucash/android/model/Split;)V
    .locals 2
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    .param p2, "splitView"    # Landroid/view/View;
    .param p3, "split"    # Lorg/gnucash/android/model/Split;

    .prologue
    .line 242
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 244
    iput-object p2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitView:Landroid/view/View;

    .line 245
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v0

    invoke-virtual {p3}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p3}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->quantity:Lorg/gnucash/android/model/Money;

    .line 247
    :cond_0
    invoke-direct {p0, p3}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->setListeners(Lorg/gnucash/android/model/Split;)V

    .line 248
    return-void
.end method

.method private setListeners(Lorg/gnucash/android/model/Split;)V
    .locals 5
    .param p1, "split"    # Lorg/gnucash/android/model/Split;

    .prologue
    .line 256
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v2, v2, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V

    .line 258
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->removeSplitButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;-><init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->accountsSpinner:Landroid/widget/Spinner;

    invoke-static {v1, v2}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$200(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Landroid/widget/Spinner;)V

    .line 269
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitCurrencyTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$300(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitCurrencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setAmountFormattingListener(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;Landroid/widget/TextView;)V

    .line 271
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$400(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setChecked(Z)V

    .line 272
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitUidTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 276
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getFormattedValue()Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setValue(Ljava/math/BigDecimal;)V

    .line 277
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitCurrencyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitMemoEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitUidTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "splitAccountUID":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$500(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->accountsSpinner:Landroid/widget/Spinner;

    invoke-static {v1, v2, v3, v4}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$600(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;JLandroid/widget/Spinner;)V

    .line 282
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$500(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 283
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getType()Lorg/gnucash/android/model/TransactionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setChecked(Lorg/gnucash/android/model/TransactionType;)V

    .line 286
    .end local v0    # "splitAccountUID":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->accountsSpinner:Landroid/widget/Spinner;

    new-instance v2, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-direct {v2, v3, v4, p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;-><init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 287
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    new-instance v2, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$2;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$2;-><init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;)V

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->addOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v2, v2, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceWatcher:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    return-void

    .line 271
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getAmountValue()Ljava/math/BigDecimal;
    .locals 8

    .prologue
    .line 303
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getCleanString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "amountString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 321
    :goto_0
    return-object v4

    .line 307
    :cond_0
    new-instance v3, Lnet/objecthunter/exp4j/ExpressionBuilder;

    invoke-direct {v3, v0}, Lnet/objecthunter/exp4j/ExpressionBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v3, "expressionBuilder":Lnet/objecthunter/exp4j/ExpressionBuilder;
    :try_start_0
    invoke-virtual {v3}, Lnet/objecthunter/exp4j/ExpressionBuilder;->build()Lnet/objecthunter/exp4j/Expression;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 316
    .local v2, "expression":Lnet/objecthunter/exp4j/Expression;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnet/objecthunter/exp4j/Expression;->validate()Lnet/objecthunter/exp4j/ValidationResult;

    move-result-object v4

    invoke-virtual {v4}, Lnet/objecthunter/exp4j/ValidationResult;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Lnet/objecthunter/exp4j/Expression;->evaluate()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_0

    .line 312
    .end local v2    # "expression":Lnet/objecthunter/exp4j/Expression;
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    .line 319
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "expression":Lnet/objecthunter/exp4j/Expression;
    :cond_1
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete expression for updating imbalance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public transferComplete(Lorg/gnucash/android/model/Money;)V
    .locals 0
    .param p1, "amount"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 252
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->quantity:Lorg/gnucash/android/model/Money;

    .line 253
    return-void
.end method
