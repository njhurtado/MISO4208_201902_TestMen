.class Lorg/gnucash/android/ui/util/widget/CalculatorEditText$4;
.super Ljava/lang/Object;
.source "CalculatorEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 158
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$4;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$4;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v0, p2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 163
    const/4 v0, 0x0

    return v0
.end method
