.class public Lorg/gnucash/android/ui/transaction/SplitEditorFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SplitEditorFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    .line 23
    const v0, 0x7f0901d3

    const-string v1, "field \'mSplitsLinearLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitsLinearLayout:Landroid/widget/LinearLayout;

    .line 24
    const v0, 0x7f090051

    const-string v1, "field \'mKeyboardView\'"

    const-class v2, Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 25
    const v0, 0x7f0900e8

    const-string v1, "field \'mImbalanceTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceTextView:Landroid/widget/TextView;

    .line 26
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    .line 32
    .local v0, "target":Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    .line 35
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitsLinearLayout:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 37
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceTextView:Landroid/widget/TextView;

    .line 38
    return-void
.end method
