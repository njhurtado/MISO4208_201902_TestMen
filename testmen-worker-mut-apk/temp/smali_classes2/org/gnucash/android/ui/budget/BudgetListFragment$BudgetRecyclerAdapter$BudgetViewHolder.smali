.class Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BudgetListFragment.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BudgetViewHolder"
.end annotation


# instance fields
.field accountName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b6
    .end annotation
.end field

.field budgetAmount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090045
    .end annotation
.end field

.field budgetId:J

.field budgetIndicator:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090049
    .end annotation
.end field

.field budgetName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090184
    .end annotation
.end field

.field budgetRecurrence:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004d
    .end annotation
.end field

.field optionsMenu:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090170
    .end annotation
.end field

.field final synthetic this$1:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$1"    # Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->this$1:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    .line 272
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 273
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 275
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->optionsMenu:Landroid/widget/ImageView;

    new-instance v1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder$1;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder$1;-><init>(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 300
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 292
    :pswitch_1
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->this$1:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    iget-wide v2, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetId:J

    invoke-static {v1, v2, v3}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->access$100(Lorg/gnucash/android/ui/budget/BudgetListFragment;J)V

    goto :goto_0

    .line 296
    :pswitch_2
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->this$1:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    iget-wide v2, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetId:J

    invoke-static {v1, v2, v3}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->access$200(Lorg/gnucash/android/ui/budget/BudgetListFragment;J)V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x7f09006d
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
