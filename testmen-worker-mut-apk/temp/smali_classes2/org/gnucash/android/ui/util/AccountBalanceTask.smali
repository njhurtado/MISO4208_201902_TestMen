.class public Lorg/gnucash/android/ui/util/AccountBalanceTask;
.super Landroid/os/AsyncTask;
.source "AccountBalanceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/gnucash/android/model/Money;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final accountBalanceTextViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final accountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/gnucash/android/ui/util/AccountBalanceTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/ui/util/AccountBalanceTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "balanceTextView"    # Landroid/widget/TextView;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/util/AccountBalanceTask;->accountBalanceTextViewReference:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/util/AccountBalanceTask;->accountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/util/AccountBalanceTask;->doInBackground([Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/gnucash/android/model/Money;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/gnucash/android/ui/util/AccountBalanceTask;->accountBalanceTextViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/util/AccountBalanceTask;->cancel(Z)Z

    .line 53
    invoke-static {}, Lorg/gnucash/android/model/Money;->getZeroInstance()Lorg/gnucash/android/model/Money;

    move-result-object v6

    .line 63
    :goto_0
    return-object v6

    .line 56
    :cond_0
    invoke-static {}, Lorg/gnucash/android/model/Money;->getZeroInstance()Lorg/gnucash/android/model/Money;

    move-result-object v6

    .line 58
    .local v6, "balance":Lorg/gnucash/android/model/Money;
    :try_start_0
    iget-object v0, p0, Lorg/gnucash/android/ui/util/AccountBalanceTask;->accountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 59
    :catch_0
    move-exception v7

    .line 60
    .local v7, "ex":Ljava/lang/Exception;
    sget-object v0, Lorg/gnucash/android/ui/util/AccountBalanceTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error computing account balance "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    invoke-static {v7}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lorg/gnucash/android/model/Money;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/util/AccountBalanceTask;->onPostExecute(Lorg/gnucash/android/model/Money;)V

    return-void
.end method

.method protected onPostExecute(Lorg/gnucash/android/model/Money;)V
    .locals 2
    .param p1, "balance"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 68
    iget-object v1, p0, Lorg/gnucash/android/ui/util/AccountBalanceTask;->accountBalanceTextViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 69
    iget-object v1, p0, Lorg/gnucash/android/ui/util/AccountBalanceTask;->accountBalanceTextViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, "balanceTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0, p1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 74
    .end local v0    # "balanceTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
