.class Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;
.super Ljava/lang/Object;
.source "TransactionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/TransactionsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 330
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 333
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v1, v1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 335
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, "addAccountIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->ACCOUNT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "parent_account_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 344
    .end local v0    # "addAccountIntent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->createNewTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
