.class Lorg/gnucash/android/ui/transaction/TransactionFormFragment$4;
.super Ljava/lang/Object;
.source "TransactionFormFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->initTransactionNameAutocomplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 422
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$4;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 425
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$4;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$500(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$4;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$200(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchTransactionSuggestions(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
