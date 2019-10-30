.class public Lorg/gnucash/android/model/Transaction;
.super Lorg/gnucash/android/model/BaseModel;
.source "Transaction.java"


# static fields
.field public static final EXTRA_ACCOUNT_UID:Ljava/lang/String; = "org.gnucash.android.extra.account_uid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_AMOUNT:Ljava/lang/String; = "org.gnucash.android.extra.amount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DOUBLE_ACCOUNT_UID:Ljava/lang/String; = "org.gnucash.android.extra.double_account_uid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SPLITS:Ljava/lang/String; = "org.gnucash.android.extra.transaction.splits"

.field public static final EXTRA_TRANSACTION_TYPE:Ljava/lang/String; = "org.gnucash.android.extra.transaction_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.org.gnucash.android.transaction"


# instance fields
.field private mCommodity:Lorg/gnucash/android/model/Commodity;

.field private mDescription:Ljava/lang/String;

.field private mIsExported:Z

.field private mIsTemplate:Z

.field private mNotes:Ljava/lang/String;

.field private mScheduledActionUID:Ljava/lang/String;

.field private mSplitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation
.end field

.field private mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lorg/gnucash/android/model/Transaction;->mNotes:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lorg/gnucash/android/model/Transaction;->mIsExported:Z

    .line 117
    iput-boolean v1, p0, Lorg/gnucash/android/model/Transaction;->mIsTemplate:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/model/Transaction;->mScheduledActionUID:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lorg/gnucash/android/model/Transaction;->initDefaults()V

    .line 131
    invoke-virtual {p0, p1}, Lorg/gnucash/android/model/Transaction;->setDescription(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/model/Transaction;Z)V
    .locals 4
    .param p1, "transaction"    # Lorg/gnucash/android/model/Transaction;
    .param p2, "generateNewUID"    # Z

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    .line 101
    const-string v1, ""

    iput-object v1, p0, Lorg/gnucash/android/model/Transaction;->mNotes:Ljava/lang/String;

    .line 107
    iput-boolean v2, p0, Lorg/gnucash/android/model/Transaction;->mIsExported:Z

    .line 117
    iput-boolean v2, p0, Lorg/gnucash/android/model/Transaction;->mIsTemplate:Z

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/gnucash/android/model/Transaction;->mScheduledActionUID:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lorg/gnucash/android/model/Transaction;->initDefaults()V

    .line 145
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/model/Transaction;->setDescription(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/model/Transaction;->setNote(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 148
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 151
    iget-object v1, p1, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Split;

    .line 152
    .local v0, "split":Lorg/gnucash/android/model/Split;
    new-instance v2, Lorg/gnucash/android/model/Split;

    invoke-direct {v2, v0, p2}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Split;Z)V

    invoke-virtual {p0, v2}, Lorg/gnucash/android/model/Transaction;->addSplit(Lorg/gnucash/android/model/Split;)V

    goto :goto_0

    .line 155
    .end local v0    # "split":Lorg/gnucash/android/model/Split;
    :cond_0
    if-nez p2, :cond_1

    .line 156
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/model/Transaction;->setUID(Ljava/lang/String;)V

    .line 158
    :cond_1
    return-void
.end method

.method public static computeBalance(Ljava/lang/String;Ljava/util/List;)Lorg/gnucash/android/model/Money;
    .locals 11
    .param p0, "accountUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;)",
            "Lorg/gnucash/android/model/Money;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    .line 294
    .local v2, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    invoke-virtual {v2, p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v1

    .line 295
    .local v1, "accountType":Lorg/gnucash/android/model/AccountType;
    invoke-virtual {v2, p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "accountCurrencyCode":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v5

    .line 298
    .local v5, "isDebitAccount":Z
    invoke-static {v0}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v4

    .line 299
    .local v4, "balance":Lorg/gnucash/android/model/Money;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gnucash/android/model/Split;

    .line 300
    .local v7, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v7}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 303
    invoke-virtual {v7}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v9

    invoke-virtual {v9}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v9

    invoke-virtual {v9}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 304
    invoke-virtual {v7}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v3

    .line 308
    .local v3, "amount":Lorg/gnucash/android/model/Money;
    :goto_1
    invoke-virtual {v7}, Lorg/gnucash/android/model/Split;->getType()Lorg/gnucash/android/model/TransactionType;

    move-result-object v9

    sget-object v10, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    if-ne v9, v10, :cond_2

    const/4 v6, 0x1

    .line 309
    .local v6, "isDebitSplit":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 310
    if-eqz v6, :cond_3

    .line 311
    invoke-virtual {v4, v3}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v4

    goto :goto_0

    .line 306
    .end local v3    # "amount":Lorg/gnucash/android/model/Money;
    .end local v6    # "isDebitSplit":Z
    :cond_1
    invoke-virtual {v7}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v3

    .restart local v3    # "amount":Lorg/gnucash/android/model/Money;
    goto :goto_1

    .line 308
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 313
    .restart local v6    # "isDebitSplit":Z
    :cond_3
    invoke-virtual {v4, v3}, Lorg/gnucash/android/model/Money;->subtract(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v4

    goto :goto_0

    .line 316
    :cond_4
    if-eqz v6, :cond_5

    .line 317
    invoke-virtual {v4, v3}, Lorg/gnucash/android/model/Money;->subtract(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v4

    goto :goto_0

    .line 319
    :cond_5
    invoke-virtual {v4, v3}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v4

    goto :goto_0

    .line 323
    .end local v3    # "amount":Lorg/gnucash/android/model/Money;
    .end local v6    # "isDebitSplit":Z
    .end local v7    # "split":Lorg/gnucash/android/model/Split;
    :cond_6
    return-object v4
.end method

.method public static createIntent(Lorg/gnucash/android/model/Transaction;)Landroid/content/Intent;
    .locals 6
    .param p0, "transaction"    # Lorg/gnucash/android/model/Transaction;

    .prologue
    .line 563
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/vnd.org.gnucash.android.transaction"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p0}, Lorg/gnucash/android/model/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lorg/gnucash/android/model/Transaction;->getNote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v3, "org.gnucash.android.extra.currency_code"

    invoke-virtual {p0}, Lorg/gnucash/android/model/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/model/Split;

    .line 570
    .local v1, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v1}, Lorg/gnucash/android/model/Split;->toCsv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 572
    .end local v1    # "split":Lorg/gnucash/android/model/Split;
    :cond_0
    const-string v3, "org.gnucash.android.extra.transaction.splits"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    return-object v0
.end method

.method private getImbalance()Lorg/gnucash/android/model/Money;
    .locals 6

    .prologue
    .line 266
    iget-object v3, p0, Lorg/gnucash/android/model/Transaction;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    .line 267
    .local v1, "imbalance":Lorg/gnucash/android/model/Money;
    iget-object v3, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Split;

    .line 268
    .local v2, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v2}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v4

    invoke-virtual {v4}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v4

    iget-object v5, p0, Lorg/gnucash/android/model/Transaction;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v4, v5}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 272
    iget-object v3, p0, Lorg/gnucash/android/model/Transaction;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    .line 280
    .end local v1    # "imbalance":Lorg/gnucash/android/model/Money;
    .end local v2    # "split":Lorg/gnucash/android/model/Split;
    :cond_0
    return-object v1

    .line 274
    .restart local v1    # "imbalance":Lorg/gnucash/android/model/Money;
    .restart local v2    # "split":Lorg/gnucash/android/model/Split;
    :cond_1
    invoke-virtual {v2}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 275
    .local v0, "amount":Lorg/gnucash/android/model/Money;
    invoke-virtual {v2}, Lorg/gnucash/android/model/Split;->getType()Lorg/gnucash/android/model/TransactionType;

    move-result-object v4

    sget-object v5, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    if-ne v4, v5, :cond_2

    .line 276
    invoke-virtual {v1, v0}, Lorg/gnucash/android/model/Money;->subtract(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v1, v0}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTypeForBalance(Lorg/gnucash/android/model/AccountType;Z)Lorg/gnucash/android/model/TransactionType;
    .locals 2
    .param p0, "accountType"    # Lorg/gnucash/android/model/AccountType;
    .param p1, "shouldReduceBalance"    # Z

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    if-eqz p1, :cond_0

    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    .line 420
    .local v0, "type":Lorg/gnucash/android/model/TransactionType;
    :goto_0
    return-object v0

    .line 416
    .end local v0    # "type":Lorg/gnucash/android/model/TransactionType;
    :cond_0
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    goto :goto_0

    .line 418
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    .restart local v0    # "type":Lorg/gnucash/android/model/TransactionType;
    :goto_1
    goto :goto_0

    .end local v0    # "type":Lorg/gnucash/android/model/TransactionType;
    :cond_2
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    goto :goto_1
.end method

.method private initDefaults()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/model/Transaction;->mTimestamp:J

    .line 166
    return-void
.end method

.method public static shouldDecreaseBalance(Lorg/gnucash/android/model/AccountType;Lorg/gnucash/android/model/TransactionType;)Z
    .locals 3
    .param p0, "accountType"    # Lorg/gnucash/android/model/AccountType;
    .param p1, "transactionType"    # Lorg/gnucash/android/model/TransactionType;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 429
    invoke-virtual {p0}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    sget-object v2, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    if-ne p1, v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 430
    goto :goto_0

    .line 432
    :cond_2
    sget-object v2, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addSplit(Lorg/gnucash/android/model/Split;)V
    .locals 1
    .param p1, "split"    # Lorg/gnucash/android/model/Split;

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/gnucash/android/model/Split;->setTransactionUID(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public createAutoBalanceSplit()Lorg/gnucash/android/model/Split;
    .locals 3

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/gnucash/android/model/Transaction;->getImbalance()Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 178
    .local v0, "imbalance":Lorg/gnucash/android/model/Money;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->isAmountZero()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    new-instance v1, Lorg/gnucash/android/model/Split;

    iget-object v2, p0, Lorg/gnucash/android/model/Transaction;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 182
    .local v1, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    :goto_0
    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 183
    invoke-virtual {p0, v1}, Lorg/gnucash/android/model/Transaction;->addSplit(Lorg/gnucash/android/model/Split;)V

    .line 186
    .end local v1    # "split":Lorg/gnucash/android/model/Split;
    :goto_1
    return-object v1

    .line 182
    .restart local v1    # "split":Lorg/gnucash/android/model/Split;
    :cond_0
    sget-object v2, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    goto :goto_0

    .line 186
    .end local v1    # "split":Lorg/gnucash/android/model/Split;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getBalance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;
    .locals 1
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/gnucash/android/model/Transaction;->computeBalance(Ljava/lang/String;Ljava/util/List;)Lorg/gnucash/android/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public getCommodity()Lorg/gnucash/android/model/Commodity;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lorg/gnucash/android/model/Transaction;->mCommodity:Lorg/gnucash/android/model/Commodity;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/gnucash/android/model/Transaction;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/gnucash/android/model/Transaction;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/gnucash/android/model/Transaction;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledActionUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/gnucash/android/model/Transaction;->mScheduledActionUID:Ljava/lang/String;

    return-object v0
.end method

.method public getSplits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    return-object v0
.end method

.method public getSplits(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "accountUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v1, "splits":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    iget-object v2, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Split;

    .line 218
    .local v0, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v0    # "split":Lorg/gnucash/android/model/Split;
    :cond_1
    return-object v1
.end method

.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lorg/gnucash/android/model/Transaction;->mTimestamp:J

    return-wide v0
.end method

.method public isExported()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lorg/gnucash/android/model/Transaction;->mIsExported:Z

    return v0
.end method

.method public isTemplate()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lorg/gnucash/android/model/Transaction;->mIsTemplate:Z

    return v0
.end method

.method public setCommodity(Lorg/gnucash/android/model/Commodity;)V
    .locals 0
    .param p1, "commodity"    # Lorg/gnucash/android/model/Commodity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    iput-object p1, p0, Lorg/gnucash/android/model/Transaction;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 348
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Transaction;->mDescription:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setExported(Z)V
    .locals 0
    .param p1, "isExported"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lorg/gnucash/android/model/Transaction;->mIsExported:Z

    .line 441
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lorg/gnucash/android/model/Transaction;->mNotes:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setScheduledActionUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheduledActionUID"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-object p1, p0, Lorg/gnucash/android/model/Transaction;->mScheduledActionUID:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public setSplits(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    iput-object p1, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Split;

    .line 233
    .local v0, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {p0}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/gnucash/android/model/Split;->setTransactionUID(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    .end local v0    # "split":Lorg/gnucash/android/model/Split;
    :cond_0
    return-void
.end method

.method public setTemplate(Z)V
    .locals 0
    .param p1, "isTemplate"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lorg/gnucash/android/model/Transaction;->mIsTemplate:Z

    .line 465
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    .line 395
    iput-wide p1, p0, Lorg/gnucash/android/model/Transaction;->mTimestamp:J

    .line 396
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 387
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/model/Transaction;->mTimestamp:J

    .line 388
    return-void
.end method

.method public setUID(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lorg/gnucash/android/model/BaseModel;->setUID(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Split;

    .line 198
    .local v0, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v0, p1}, Lorg/gnucash/android/model/Split;->setTransactionUID(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "split":Lorg/gnucash/android/model/Split;
    :cond_0
    return-void
.end method

.method public toOFX(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 22
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Transaction;->getBalance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v6

    .line 476
    .local v6, "balance":Lorg/gnucash/android/model/Money;
    invoke-virtual {v6}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v20

    if-eqz v20, :cond_4

    sget-object v17, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    .line 478
    .local v17, "transactionType":Lorg/gnucash/android/model/TransactionType;
    :goto_0
    const-string v20, "STMTTRN"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 479
    .local v16, "transactionNode":Lorg/w3c/dom/Element;
    const-string v20, "TRNTYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 480
    .local v19, "typeNode":Lorg/w3c/dom/Element;
    invoke-virtual/range {v17 .. v17}, Lorg/gnucash/android/model/TransactionType;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 481
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 483
    const-string v20, "DTPOSTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 484
    .local v9, "datePosted":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/model/Transaction;->mTimestamp:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lorg/gnucash/android/export/ofx/OfxHelper;->getOfxFormattedTime(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 485
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 487
    const-string v20, "DTUSER"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 488
    .local v10, "dateUser":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/model/Transaction;->mTimestamp:J

    move-wide/from16 v20, v0

    .line 489
    invoke-static/range {v20 .. v21}, Lorg/gnucash/android/export/ofx/OfxHelper;->getOfxFormattedTime(J)Ljava/lang/String;

    move-result-object v20

    .line 488
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 490
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 492
    const-string v20, "TRNAMT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 493
    .local v5, "amount":Lorg/w3c/dom/Element;
    invoke-virtual {v6}, Lorg/gnucash/android/model/Money;->toPlainString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 494
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 496
    const-string v20, "FITID"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 497
    .local v15, "transID":Lorg/w3c/dom/Element;
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 498
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 500
    const-string v20, "NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 501
    .local v12, "name":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Transaction;->mDescription:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 502
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Transaction;->mNotes:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Transaction;->mNotes:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 505
    const-string v20, "MEMO"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 506
    .local v11, "memo":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Transaction;->mNotes:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 507
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 510
    .end local v11    # "memo":Lorg/w3c/dom/Element;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 511
    move-object/from16 v18, p2

    .line 512
    .local v18, "transferAccountUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Transaction;->mSplitList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/gnucash/android/model/Split;

    .line 513
    .local v14, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v14}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 514
    invoke-virtual {v14}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v18

    .line 518
    .end local v14    # "split":Lorg/gnucash/android/model/Split;
    :cond_2
    const-string v20, "BANKID"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 519
    .local v8, "bankId":Lorg/w3c/dom/Element;
    sget-object v20, Lorg/gnucash/android/export/ofx/OfxHelper;->APP_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 521
    const-string v20, "ACCTID"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 522
    .local v3, "acctId":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 524
    const-string v20, "ACCTTYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 525
    .local v4, "accttype":Lorg/w3c/dom/Element;
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    .line 526
    .local v2, "acctDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/gnucash/android/model/Account;->convertToOfxAccountType(Lorg/gnucash/android/model/AccountType;)Lorg/gnucash/android/model/Account$OfxAccountType;

    move-result-object v13

    .line 527
    .local v13, "ofxAccountType":Lorg/gnucash/android/model/Account$OfxAccountType;
    invoke-virtual {v13}, Lorg/gnucash/android/model/Account$OfxAccountType;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 529
    const-string v20, "BANKACCTTO"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 530
    .local v7, "bankAccountTo":Lorg/w3c/dom/Element;
    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 531
    invoke-interface {v7, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 532
    invoke-interface {v7, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 534
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 537
    .end local v2    # "acctDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .end local v3    # "acctId":Lorg/w3c/dom/Element;
    .end local v4    # "accttype":Lorg/w3c/dom/Element;
    .end local v7    # "bankAccountTo":Lorg/w3c/dom/Element;
    .end local v8    # "bankId":Lorg/w3c/dom/Element;
    .end local v13    # "ofxAccountType":Lorg/gnucash/android/model/Account$OfxAccountType;
    .end local v18    # "transferAccountUID":Ljava/lang/String;
    :cond_3
    return-object v16

    .line 476
    .end local v5    # "amount":Lorg/w3c/dom/Element;
    .end local v9    # "datePosted":Lorg/w3c/dom/Element;
    .end local v10    # "dateUser":Lorg/w3c/dom/Element;
    .end local v12    # "name":Lorg/w3c/dom/Element;
    .end local v15    # "transID":Lorg/w3c/dom/Element;
    .end local v16    # "transactionNode":Lorg/w3c/dom/Element;
    .end local v17    # "transactionType":Lorg/gnucash/android/model/TransactionType;
    .end local v19    # "typeNode":Lorg/w3c/dom/Element;
    :cond_4
    sget-object v17, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    goto/16 :goto_0
.end method
