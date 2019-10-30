.class Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$1;
.super Ljava/lang/Object;
.source "BudgetAmountEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 248
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iput-object p2, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$1;->val$this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iget-object v2, v2, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->access$100(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iget-object v3, v3, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->this$0:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->access$100(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "currencyCode":Ljava/lang/String;
    invoke-static {v1}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    .line 253
    .local v0, "commodity":Lorg/gnucash/android/model/Commodity;
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder$1;->this$1:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    iget-object v2, v2, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->currencySymbolTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
