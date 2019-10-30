.class Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;
.super Ljava/lang/Object;
.source "SplitEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->setListeners(Lorg/gnucash/android/model/Split;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .prologue
    .line 258
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;->this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 261
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;->this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitsLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;->this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    iget-object v1, v1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;->this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$100(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;->this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    iget-object v1, v1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$1;->this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceWatcher:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 264
    return-void
.end method
