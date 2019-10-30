.class public Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;
.super Ljava/lang/Object;
.source "CalculatorKeyboard.java"


# static fields
.field public static final KEY_CODE_DECIMAL_SEPARATOR:I = 0x2e

.field public static final LOCALE_DECIMAL_SEPARATOR:Ljava/lang/String;


# instance fields
.field private hapticFeedback:Z

.field private mContext:Landroid/content/Context;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->LOCALE_DECIMAL_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "keyboardLayoutResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v2, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;-><init>(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V

    iput-object v2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 169
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 171
    new-instance v1, Landroid/inputmethodservice/Keyboard;

    iget-object v2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 172
    .local v1, "keyboard":Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 173
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 174
    sget-object v2, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->LOCALE_DECIMAL_SEPARATOR:Ljava/lang/String;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 178
    .end local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget-object v2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 179
    iget-object v2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v5}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 180
    iget-object v2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v3, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 182
    iget-object v2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->isHapticFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)Landroid/inputmethodservice/KeyboardView;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method private isHapticFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "value":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hideCustomKeyboard()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 203
    return-void
.end method

.method public isCustomKeyboardVisible()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->hideCustomKeyboard()V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCustomKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 197
    return-void
.end method
