.class Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;
.super Ljava/lang/Object;
.source "TransactionTypeSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTypeChangedListener"
.end annotation


# instance fields
.field private mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

.field private mCurrencyTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;Lorg/gnucash/android/ui/util/widget/CalculatorEditText;Landroid/widget/TextView;)V
    .locals 0
    .param p2, "amountEditText"    # Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
    .param p3, "currencyTextView"    # Landroid/widget/TextView;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 162
    iput-object p3, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->mCurrencyTextView:Landroid/widget/TextView;

    .line 163
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 167
    iget-object v5, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    if-eqz p2, :cond_3

    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setText(Ljava/lang/CharSequence;)V

    .line 168
    if-eqz p2, :cond_4

    .line 169
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060061

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 170
    .local v3, "red":I
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v4, v3}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextColor(I)V

    .line 171
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v4, v3}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setTextColor(I)V

    .line 172
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->mCurrencyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    .end local v3    # "red":I
    :goto_1
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v0

    .line 181
    .local v0, "amount":Ljava/math/BigDecimal;
    if-eqz v0, :cond_2

    .line 182
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 183
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-gez v4, :cond_2

    .line 184
    :cond_1
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setValue(Ljava/math/BigDecimal;)V

    .line 189
    :cond_2
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iget-object v4, v4, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mOnCheckedChangeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 190
    .local v2, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-interface {v2, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_2

    .line 167
    .end local v0    # "amount":Ljava/math/BigDecimal;
    .end local v2    # "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_3
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 175
    :cond_4
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06005b

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 176
    .local v1, "green":I
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->this$0:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v4, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextColor(I)V

    .line 177
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v4, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setTextColor(I)V

    .line 178
    iget-object v4, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;->mCurrencyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 192
    .end local v1    # "green":I
    .restart local v0    # "amount":Ljava/math/BigDecimal;
    :cond_5
    return-void
.end method
