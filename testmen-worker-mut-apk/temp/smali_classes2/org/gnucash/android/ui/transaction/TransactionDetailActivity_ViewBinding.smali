.class public Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TransactionDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;

.field private view2131296442:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;)V
    .locals 1
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;

    .line 33
    const v1, 0x7f09021c

    const-string v2, "field \'mTransactionDescription\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionDescription:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f09021f

    const-string v2, "field \'mTimeAndDate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTimeAndDate:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f09021e

    const-string v2, "field \'mRecurrence\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mRecurrence:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f09021d

    const-string v2, "field \'mNotes\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mNotes:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f090206

    const-string v2, "field \'mToolBar\'"

    const-class v3, Landroid/support/v7/widget/Toolbar;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mToolBar:Landroid/support/v7/widget/Toolbar;

    .line 38
    const v1, 0x7f090210

    const-string v2, "field \'mTransactionAccount\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionAccount:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f09002f

    const-string v2, "field \'mDebitBalance\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDebitBalance:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f09002e

    const-string v2, "field \'mCreditBalance\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mCreditBalance:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0900c9

    const-string v2, "field \'mDetailTableLayout\'"

    const-class v3, Landroid/widget/TableLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableLayout:Landroid/widget/TableLayout;

    .line 42
    const v1, 0x7f0900ba

    const-string v2, "method \'editTransaction\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;->view2131296442:Landroid/view/View;

    .line 44
    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding$1;-><init>(Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;

    .line 56
    .local v0, "target":Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;

    .line 59
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionDescription:Landroid/widget/TextView;

    .line 60
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTimeAndDate:Landroid/widget/TextView;

    .line 61
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mRecurrence:Landroid/widget/TextView;

    .line 62
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mNotes:Landroid/widget/TextView;

    .line 63
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mToolBar:Landroid/support/v7/widget/Toolbar;

    .line 64
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionAccount:Landroid/widget/TextView;

    .line 65
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDebitBalance:Landroid/widget/TextView;

    .line 66
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mCreditBalance:Landroid/widget/TextView;

    .line 67
    iput-object v2, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableLayout:Landroid/widget/TableLayout;

    .line 69
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;->view2131296442:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity_ViewBinding;->view2131296442:Landroid/view/View;

    .line 71
    return-void
.end method
