.class Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;
.super Ljava/lang/Object;
.source "BudgetAmountEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;-><init>(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

.field final synthetic val$this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    .prologue
    .line 262
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iput-object p2, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;->val$this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iget-object v0, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountTableLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iget-object v1, v1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iget-object v0, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->access$200(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$2;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iget-object v1, v1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method
