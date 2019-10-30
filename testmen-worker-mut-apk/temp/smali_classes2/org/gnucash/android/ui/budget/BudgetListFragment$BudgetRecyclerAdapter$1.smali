.class Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BudgetListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->onBindViewHolderCursor(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

.field final synthetic val$budget:Lorg/gnucash/android/model/Budget;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;Lorg/gnucash/android/model/Budget;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$1;->val$budget:Lorg/gnucash/android/model/Budget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    iget-object v0, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$1;->val$budget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->onClickBudget(Ljava/lang/String;)V

    .line 250
    return-void
.end method
