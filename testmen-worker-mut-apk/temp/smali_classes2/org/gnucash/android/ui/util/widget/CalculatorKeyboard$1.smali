.class Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;
.super Ljava/lang/Object;
.source "CalculatorKeyboard.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 7
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 72
    iget-object v6, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-static {v6}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->access$000(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, "focusCurrent":Landroid/view/View;
    sget-boolean v6, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez v4, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 80
    :cond_0
    instance-of v6, v4, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    if-nez v6, :cond_1

    .line 131
    :goto_0
    return-void

    :cond_1
    move-object v0, v4

    .line 84
    check-cast v0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 85
    .local v0, "calculatorEditText":Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 86
    .local v2, "editable":Landroid/text/Editable;
    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getSelectionStart()I

    move-result v5

    .line 87
    .local v5, "start":I
    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getSelectionEnd()I

    move-result v3

    .line 91
    .local v3, "end":I
    if-le v3, v5, :cond_2

    .line 92
    invoke-interface {v2, v5, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 94
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 117
    :sswitch_0
    if-lez v5, :cond_3

    add-int/lit8 v1, v5, -0x1

    .line 118
    .local v1, "deleteStart":I
    :goto_1
    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 96
    .end local v1    # "deleteStart":I
    :sswitch_1
    sget-object v6, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->LOCALE_DECIMAL_SEPARATOR:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 114
    :sswitch_2
    int-to-char v6, p1

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 117
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 121
    :sswitch_3
    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 124
    :sswitch_4
    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->evaluate()Ljava/lang/String;

    goto :goto_0

    .line 127
    :sswitch_5
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 128
    iget-object v6, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->hideCustomKeyboard()V

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0x2a -> :sswitch_2
        0x2b -> :sswitch_2
        0x2d -> :sswitch_2
        0x2e -> :sswitch_1
        0x2f -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_3
    .end sparse-switch
.end method

.method public onPress(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-static {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->access$100(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard$1;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-static {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->access$200(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->performHapticFeedback(I)Z

    .line 137
    :cond_0
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 140
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
