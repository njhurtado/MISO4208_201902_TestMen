.class Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "AccountsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->onBindViewHolderCursor(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

.field final synthetic val$accountUID:Ljava/lang/String;

.field final synthetic val$holder:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;Ljava/lang/String;Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    .prologue
    .line 546
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->val$accountUID:Ljava/lang/String;

    iput-object p3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->val$holder:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 549
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v3, v3, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$000(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->val$accountUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->isFavoriteAccount(Ljava/lang/String;)Z

    move-result v2

    .line 551
    .local v2, "isFavoriteAccount":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v4, "favorite"

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 553
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v3, v3, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$000(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->val$accountUID:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 555
    if-nez v2, :cond_2

    const v1, 0x7f0800c3

    .line 557
    .local v1, "drawableResource":I
    :goto_1
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->val$holder:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    iget-object v3, v3, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->favoriteStatus:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v3, v3, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$100(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    move-result-object v3

    sget-object v4, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->FAVORITES:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    if-ne v3, v4, :cond_0

    .line 559
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v3, v3, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/account/AccountsListFragment;->refresh()V

    .line 560
    :cond_0
    return-void

    .line 552
    .end local v1    # "drawableResource":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 555
    :cond_2
    const v1, 0x7f0800c4

    goto :goto_1
.end method
