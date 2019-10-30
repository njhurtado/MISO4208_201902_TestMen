.class Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BudgetDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BudgetAmountViewHolder"
.end annotation


# instance fields
.field budgetAccount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090043
    .end annotation
.end field

.field budgetAmount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090045
    .end annotation
.end field

.field budgetChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090048
    .end annotation
.end field

.field budgetIndicator:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090049
    .end annotation
.end field

.field budgetLeft:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004b
    .end annotation
.end field

.field budgetSpent:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004f
    .end annotation
.end field

.field final synthetic this$1:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 303
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->this$1:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

    .line 304
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 305
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 306
    return-void
.end method
