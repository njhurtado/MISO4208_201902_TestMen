.class Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;
.super Ljava/lang/Object;
.source "CalculatorEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 127
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setSelection(I)V

    .line 129
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-static {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->access$100(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->showCustomKeyboard(Landroid/view/View;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-static {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->access$100(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->hideCustomKeyboard()V

    .line 132
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$2;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->evaluate()Ljava/lang/String;

    goto :goto_0
.end method
