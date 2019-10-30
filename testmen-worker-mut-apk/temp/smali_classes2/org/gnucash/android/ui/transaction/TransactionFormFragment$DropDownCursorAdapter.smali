.class Lorg/gnucash/android/ui/transaction/TransactionFormFragment$DropDownCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "TransactionFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/TransactionFormFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 385
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$DropDownCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .line 386
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 387
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 391
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 392
    const-string v6, "uid"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "transactionUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$DropDownCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v7}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$200(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getBalance(Ljava/lang/String;Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 395
    .local v0, "balance":Lorg/gnucash/android/model/Money;
    const-string v6, "timestamp"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 396
    .local v4, "timestamp":J
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$DropDownCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/16 v7, 0x16

    invoke-static {v6, v4, v5, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "dateString":Ljava/lang/String;
    const v6, 0x7f0901b6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 400
    .local v2, "secondaryTextView":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->formattedString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method
