.class Lorg/gnucash/android/ui/util/widget/CalculatorEditText$3;
.super Ljava/lang/Object;
.source "CalculatorEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 137
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$3;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$3;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-static {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->access$100(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;)Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->showCustomKeyboard(Landroid/view/View;)V

    .line 143
    return-void
.end method
