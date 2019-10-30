.class Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;
.super Ljava/lang/Object;
.source "TransactionsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/TransactionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$100(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$002(Lorg/gnucash/android/ui/transaction/TransactionsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$100(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->isPlaceholderAccount(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$202(Lorg/gnucash/android/ui/transaction/TransactionsActivity;Z)Z

    .line 135
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$200(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 137
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$300(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 138
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    .line 146
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 148
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->refresh()V

    .line 152
    return-void

    .line 141
    .restart local p2    # "view":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$300(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 143
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v1, v1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f0f0175

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
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
    .line 157
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
