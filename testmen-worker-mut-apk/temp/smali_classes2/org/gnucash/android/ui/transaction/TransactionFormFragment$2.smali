.class Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;
.super Ljava/lang/Object;
.source "TransactionFormFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

.field userInteraction:Z


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V
    .locals 1
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 323
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->userInteraction:Z

    return-void
.end method

.method private removeFavoriteIconFromSelectedView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    .line 351
    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 354
    :cond_0
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
    .line 332
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    invoke-direct {p0, p2}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->removeFavoriteIconFromSelectedView(Landroid/widget/TextView;)V

    .line 334
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$100(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 335
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$100(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Split;

    .line 336
    .local v0, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$200(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$300(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v0    # "split":Lorg/gnucash/android/model/Split;
    :cond_1
    iget-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->userInteraction:Z

    if-nez v1, :cond_2

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->userInteraction:Z

    .line 347
    :goto_1
    return-void

    .line 346
    :cond_2
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$400(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    goto :goto_1
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
    .line 359
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
