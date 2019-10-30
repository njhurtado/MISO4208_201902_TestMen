.class public Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;
.super Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;
.source "TransactionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/TransactionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransactionRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter",
        "<",
        "Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_COMPACT:I = 0x111

.field public static final ITEM_TYPE_FULL:I = 0x100


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 252
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    .line 253
    invoke-direct {p0, p2}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;-><init>(Landroid/database/Cursor;)V

    .line 254
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x111

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolderCursor(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 247
    check-cast p1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->onBindViewHolderCursor(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;Landroid/database/Cursor;)V

    return-void
.end method

.method public onBindViewHolderCursor(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "holder"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 271
    const-string v13, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionId:J

    .line 273
    const-string v13, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "description":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const-string v13, "uid"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "transactionUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v13}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$200(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v14}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$100(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getBalance(Ljava/lang/String;Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v2

    .line 278
    .local v2, "amount":Lorg/gnucash/android/model/Money;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionAmount:Landroid/widget/TextView;

    invoke-static {v13, v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 280
    const-string v13, "timestamp"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 281
    .local v4, "dateMillis":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v13}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v4, v5}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getPrettyDateFormat(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "dateText":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionId:J

    .line 284
    .local v8, "id":J
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v14, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v9}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$1;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;J)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v13}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 292
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-static {}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getSplitsForTransaction(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 296
    .local v10, "splits":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    const-string v11, ""

    .line 298
    .local v11, "text":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/gnucash/android/model/Split;

    const/4 v14, 0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/gnucash/android/model/Split;

    invoke-virtual {v13, v14}, Lorg/gnucash/android/model/Split;->isPairOf(Lorg/gnucash/android/model/Split;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 299
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gnucash/android/model/Split;

    .line 300
    .local v7, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v7}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v15}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$100(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 301
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v13

    invoke-virtual {v7}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getFullyQualifiedAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 307
    .end local v7    # "split":Lorg/gnucash/android/model/Split;
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_3

    .line 308
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " splits"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 310
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionDate:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->editTransaction:Landroid/widget/ImageView;

    new-instance v14, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 258
    const/16 v2, 0x111

    if-ne p2, v2, :cond_0

    const v0, 0x7f0b0030

    .line 259
    .local v0, "layoutRes":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    .line 260
    invoke-virtual {v2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, "v":Landroid/view/View;
    new-instance v2, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    invoke-direct {v2, p0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;Landroid/view/View;)V

    return-object v2

    .line 258
    .end local v0    # "layoutRes":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    const v0, 0x7f0b0031

    goto :goto_0
.end method
