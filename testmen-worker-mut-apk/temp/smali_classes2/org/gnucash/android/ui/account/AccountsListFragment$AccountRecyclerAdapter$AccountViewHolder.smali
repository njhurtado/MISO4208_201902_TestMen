.class Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AccountsListFragment.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountViewHolder"
.end annotation


# instance fields
.field accoundId:J

.field accountBalance:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090006
    .end annotation
.end field

.field accountName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090184
    .end annotation
.end field

.field budgetIndicator:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090049
    .end annotation
.end field

.field colorStripView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090008
    .end annotation
.end field

.field createTransaction:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090075
    .end annotation
.end field

.field description:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b6
    .end annotation
.end field

.field favoriteStatus:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bb
    .end annotation
.end field

.field optionsMenu:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090170
    .end annotation
.end field

.field final synthetic this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$1"    # Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 583
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    .line 584
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 585
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 587
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->optionsMenu:Landroid/widget/ImageView;

    new-instance v1, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder$1;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder$1;-><init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 603
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 613
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 605
    :pswitch_1
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    iget-wide v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->accoundId:J

    invoke-virtual {v1, v2, v3}, Lorg/gnucash/android/ui/account/AccountsListFragment;->openCreateOrEditActivity(J)V

    goto :goto_0

    .line 609
    :pswitch_2
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    iget-wide v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->accoundId:J

    invoke-virtual {v1, v2, v3}, Lorg/gnucash/android/ui/account/AccountsListFragment;->tryDeleteAccount(J)V

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x7f09006d
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
