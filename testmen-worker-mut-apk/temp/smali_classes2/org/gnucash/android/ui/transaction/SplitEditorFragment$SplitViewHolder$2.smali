.class Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$2;
.super Ljava/lang/Object;
.source "SplitEditorFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 287
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$2;->this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder$2;->this$1:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceWatcher:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 291
    return-void
.end method
