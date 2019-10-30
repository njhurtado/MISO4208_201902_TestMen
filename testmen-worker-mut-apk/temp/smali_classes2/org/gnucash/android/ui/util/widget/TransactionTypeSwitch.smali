.class public Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;
.super Landroid/support/v7/widget/SwitchCompat;
.source "TransactionTypeSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;
    }
.end annotation


# instance fields
.field private mAccountType:Lorg/gnucash/android/model/AccountType;

.field mOnCheckedChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    .line 41
    sget-object v0, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mOnCheckedChangeListeners:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget-object v0, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mOnCheckedChangeListeners:Ljava/util/List;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget-object v0, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mOnCheckedChangeListeners:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public addOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "checkedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mOnCheckedChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public getAccountType()Lorg/gnucash/android/model/AccountType;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mAccountType:Lorg/gnucash/android/model/AccountType;

    return-object v0
.end method

.method public getTransactionType()Lorg/gnucash/android/model/TransactionType;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mAccountType:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v0}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_0
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    goto :goto_0
.end method

.method public setAccountType(Lorg/gnucash/android/model/AccountType;)V
    .locals 5
    .param p1, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    const v4, 0x7f0f00c6

    const v3, 0x7f0f00f7

    .line 58
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 59
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$1;->$SwitchMap$org$gnucash$android$model$AccountType:[I

    iget-object v2, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mAccountType:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v2}, Lorg/gnucash/android/model/AccountType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 103
    const v1, 0x7f0f00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 104
    const v1, 0x7f0f00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 107
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->invalidate()V

    .line 109
    return-void

    .line 62
    :pswitch_0
    const v1, 0x7f0f0108

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 63
    const v1, 0x7f0f00ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :pswitch_1
    const v1, 0x7f0f0111

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 67
    const v1, 0x7f0f00d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :pswitch_3
    const v1, 0x7f0f00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 77
    const v1, 0x7f0f00e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :pswitch_4
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 81
    const v1, 0x7f0f00e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :pswitch_5
    const v1, 0x7f0f00fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 85
    const v1, 0x7f0f00db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 88
    :pswitch_6
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 89
    const v1, 0x7f0f00c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 92
    :pswitch_7
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 93
    const v1, 0x7f0f00e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 97
    :pswitch_8
    const v1, 0x7f0f00c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 98
    const v1, 0x7f0f0107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public setAmountFormattingListener(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "amoutView"    # Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
    .param p2, "currencyTextView"    # Landroid/widget/TextView;

    .prologue
    .line 117
    new-instance v0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;

    invoke-direct {v0, p0, p1, p2}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch$OnTypeChangedListener;-><init>(Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;Lorg/gnucash/android/ui/util/widget/CalculatorEditText;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    return-void
.end method

.method public setChecked(Lorg/gnucash/android/model/TransactionType;)V
    .locals 1
    .param p1, "transactionType"    # Lorg/gnucash/android/model/TransactionType;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->mAccountType:Lorg/gnucash/android/model/AccountType;

    invoke-static {v0, p1}, Lorg/gnucash/android/model/Transaction;->shouldDecreaseBalance(Lorg/gnucash/android/model/AccountType;Lorg/gnucash/android/model/TransactionType;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setChecked(Z)V

    .line 134
    return-void
.end method
