.class Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;
.super Ljava/lang/Object;
.source "BudgetDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->onBindViewHolder(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

    iput p2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "account_uid"

    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

    invoke-static {v1}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->access$200(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/model/BudgetAmount;

    invoke-virtual {v1}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    return-void
.end method
