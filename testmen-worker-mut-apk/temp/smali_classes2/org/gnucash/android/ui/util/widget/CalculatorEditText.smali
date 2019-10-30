.class public Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "CalculatorEditText.java"


# instance fields
.field private isContentModified:Z

.field private mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

.field private mCalculatorKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mCalculatorKeysLayout:I

.field private mCommodity:Lorg/gnucash/android/model/Commodity;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 58
    sget-object v0, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isContentModified:Z

    .line 71
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget-object v0, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isContentModified:Z

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object v0, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isContentModified:Z

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method static synthetic access$002(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isContentModified:Z

    return p1
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 91
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lorg/gnucash/android/R$styleable;->CalculatorEditText:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x7f120000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeysLayout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    new-instance v1, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$1;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$1;-><init>(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)V

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    return-void

    .line 100
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public bindListeners(Landroid/inputmethodservice/KeyboardView;)V
    .locals 3
    .param p1, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 174
    new-instance v0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    iget-object v1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeysLayout:I

    invoke-direct {v0, v1, p1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;I)V

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V

    .line 175
    return-void
.end method

.method public bindListeners(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V
    .locals 2
    .param p1, "calculatorKeyboard"    # Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .line 123
    invoke-virtual {p1}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;-><init>(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)V

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    new-instance v0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$3;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$3;-><init>(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)V

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setInputType(I)V

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setShowSoftInputOnFocus(Z)V

    .line 158
    :goto_0
    new-instance v0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$4;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$4;-><init>(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)V

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mContext:Landroid/content/Context;

    check-cast v0, Lorg/gnucash/android/ui/common/FormActivity;

    iget-object v1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/common/FormActivity;->setOnBackListener(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V

    .line 168
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setRawInputType(I)V

    goto :goto_0
.end method

.method public evaluate()Ljava/lang/String;
    .locals 9

    .prologue
    const v7, 0x7f0f00da

    .line 249
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getCleanString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "amountString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 273
    .end local v0    # "amountString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 253
    .restart local v0    # "amountString":Ljava/lang/String;
    :cond_0
    new-instance v3, Lnet/objecthunter/exp4j/ExpressionBuilder;

    invoke-direct {v3, v0}, Lnet/objecthunter/exp4j/ExpressionBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .local v3, "expressionBuilder":Lnet/objecthunter/exp4j/ExpressionBuilder;
    :try_start_0
    invoke-virtual {v3}, Lnet/objecthunter/exp4j/ExpressionBuilder;->build()Lnet/objecthunter/exp4j/Expression;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 266
    .local v2, "expression":Lnet/objecthunter/exp4j/Expression;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnet/objecthunter/exp4j/Expression;->validate()Lnet/objecthunter/exp4j/ValidationResult;

    move-result-object v6

    invoke-virtual {v6}, Lnet/objecthunter/exp4j/ValidationResult;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    new-instance v5, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Lnet/objecthunter/exp4j/Expression;->evaluate()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    .line 268
    .local v5, "result":Ljava/math/BigDecimal;
    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setValue(Ljava/math/BigDecimal;)V

    .line 273
    .end local v5    # "result":Ljava/math/BigDecimal;
    :goto_1
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    .end local v2    # "expression":Lnet/objecthunter/exp4j/Expression;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setError(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid expression: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v4}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 263
    const-string v0, ""

    goto :goto_0

    .line 270
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v2    # "expression":Lnet/objecthunter/exp4j/Expression;
    :cond_1
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setError(Ljava/lang/CharSequence;)V

    .line 271
    const-string v6, "View"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expression is null or invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCalculatorKeyboard()Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    return-object v0
.end method

.method public getCalculatorKeyboardView()Landroid/inputmethodservice/KeyboardView;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method public getCalculatorKeysLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/XmlRes;
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeysLayout:I

    return v0
.end method

.method public getCleanString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommodity()Lorg/gnucash/android/model/Commodity;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCommodity:Lorg/gnucash/android/model/Commodity;

    return-object v0
.end method

.method public getValue()Ljava/math/BigDecimal;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->evaluate()Ljava/lang/String;

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/gnucash/android/util/AmountParser;->parse(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 314
    :goto_0
    return-object v2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing amount string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from CalculatorEditText"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInputModified()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isContentModified:Z

    return v0
.end method

.method public isInputValid()Z
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->evaluate()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCalculatorKeyboard(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V
    .locals 0
    .param p1, "keyboard"    # Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .line 225
    return-void
.end method

.method public setCalculatorKeyboardView(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0
    .param p1, "calculatorKeyboardView"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 199
    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Landroid/inputmethodservice/KeyboardView;)V

    .line 200
    return-void
.end method

.method public setCalculatorKeysLayout(I)V
    .locals 1
    .param p1, "calculatorKeysLayout"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 215
    iput p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeysLayout:I

    .line 216
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCalculatorKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Landroid/inputmethodservice/KeyboardView;)V

    .line 217
    return-void
.end method

.method public setCommodity(Lorg/gnucash/android/model/Commodity;)V
    .locals 0
    .param p1, "commodity"    # Lorg/gnucash/android/model/Commodity;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 242
    return-void
.end method

.method public setValue(Ljava/math/BigDecimal;)V
    .locals 6
    .param p1, "amount"    # Ljava/math/BigDecimal;

    .prologue
    const/4 v5, 0x0

    .line 325
    iget-object v3, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {p1, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 327
    .local v1, "newAmount":Ljava/math/BigDecimal;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 328
    .local v0, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual {v0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 329
    iget-object v3, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 330
    invoke-virtual {v0, v5}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 331
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "resultString":Ljava/lang/String;
    invoke-super {p0, v2}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setSelection(I)V

    .line 335
    return-void
.end method
