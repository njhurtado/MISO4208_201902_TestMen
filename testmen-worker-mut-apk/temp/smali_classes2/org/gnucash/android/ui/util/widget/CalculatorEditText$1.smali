.class Lorg/gnucash/android/ui/util/widget/CalculatorEditText$1;
.super Ljava/lang/Object;
.source "CalculatorEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 103
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$1;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText$1;->this$0:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->access$002(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;Z)Z

    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 112
    return-void
.end method
