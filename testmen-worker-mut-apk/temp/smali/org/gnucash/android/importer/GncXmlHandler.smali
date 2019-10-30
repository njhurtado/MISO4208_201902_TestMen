.class public Lorg/gnucash/android/importer/GncXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GncXmlHandler.java"


# static fields
.field public static final ACCOUNT_COLOR_HEX_REGEX:Ljava/lang/String; = "^#(?:[0-9a-fA-F]{3}){2}$"

.field private static final LOG_TAG:Ljava/lang/String; = "GnuCashAccountImporter"

.field private static final NO_CURRENCY_CODE:Ljava/lang/String; = "XXX"


# instance fields
.field mAccount:Lorg/gnucash/android/model/Account;

.field mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Account;",
            ">;"
        }
    .end annotation
.end field

.field mAccountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/gnucash/android/model/Account;",
            ">;"
        }
    .end annotation
.end field

.field mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mAutoBalanceSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation
.end field

.field private mBook:Lorg/gnucash/android/model/Book;

.field mBudget:Lorg/gnucash/android/model/Budget;

.field mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

.field mBudgetAmountAccountUID:Ljava/lang/String;

.field mBudgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Budget;",
            ">;"
        }
    .end annotation
.end field

.field private mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

.field private mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

.field mContent:Ljava/lang/StringBuilder;

.field private mCurrencyCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mISO4217Currency:Z

.field mIgnoreElement:Ljava/lang/String;

.field mIgnoreScheduledAction:Z

.field mIgnoreTemplateTransaction:Z

.field mInBudgetSlot:Z

.field mInColorSlot:Z

.field mInCreditNumericSlot:Z

.field mInDebitNumericSlot:Z

.field mInDefaultTransferAccount:Z

.field mInExported:Z

.field mInFavoriteSlot:Z

.field mInPlaceHolderSlot:Z

.field mInSplitAccountSlot:Z

.field mInTemplates:Z

.field mIsDateEntered:Z

.field mIsDatePosted:Z

.field mIsLastRun:Z

.field mIsNote:Z

.field mIsRecurrenceStart:Z

.field mIsScheduledEnd:Z

.field mIsScheduledStart:Z

.field mNegativeQuantity:Z

.field mPrice:Lorg/gnucash/android/model/Price;

.field mPriceCommodity:Z

.field mPriceCurrency:Z

.field mPriceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Price;",
            ">;"
        }
    .end annotation
.end field

.field private mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

.field mQuantity:Ljava/math/BigDecimal;

.field mRecurrence:Lorg/gnucash/android/model/Recurrence;

.field mRecurrenceMultiplier:I

.field private mRecurrencePeriod:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mRootAccount:Lorg/gnucash/android/model/Account;

.field mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

.field private mScheduledActionsDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

.field mScheduledActionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field mSlotTagAttribute:Ljava/lang/String;

.field mSplit:Lorg/gnucash/android/model/Split;

.field mTemplatAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Account;",
            ">;"
        }
    .end annotation
.end field

.field mTemplateAccountToTransactionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTemplateTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field mTransaction:Lorg/gnucash/android/model/Transaction;

.field mTransactionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

.field mValue:Ljava/math/BigDecimal;

.field private mainDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 290
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 202
    iput-object v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreElement:Ljava/lang/String;

    .line 222
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInColorSlot:Z

    .line 223
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInPlaceHolderSlot:Z

    .line 224
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInFavoriteSlot:Z

    .line 225
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mISO4217Currency:Z

    .line 226
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsDatePosted:Z

    .line 227
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsDateEntered:Z

    .line 228
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsNote:Z

    .line 229
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInDefaultTransferAccount:Z

    .line 230
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInExported:Z

    .line 231
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    .line 232
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInSplitAccountSlot:Z

    .line 233
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInCreditNumericSlot:Z

    .line 234
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInDebitNumericSlot:Z

    .line 235
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsScheduledStart:Z

    .line 236
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsScheduledEnd:Z

    .line 237
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsLastRun:Z

    .line 238
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsRecurrenceStart:Z

    .line 239
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInBudgetSlot:Z

    .line 245
    iput-object v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mSlotTagAttribute:Ljava/lang/String;

    .line 247
    iput-object v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmountAccountUID:Ljava/lang/String;

    .line 252
    iput v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrenceMultiplier:I

    .line 258
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreTemplateTransaction:Z

    .line 263
    iput-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreScheduledAction:Z

    .line 270
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrencePeriod:J

    .line 291
    invoke-direct {p0}, Lorg/gnucash/android/importer/GncXmlHandler;->init()V

    .line 292
    return-void
.end method

.method private generateMissedScheduledTransactions(Lorg/gnucash/android/model/ScheduledAction;)I
    .locals 14
    .param p1, "scheduledAction"    # Lorg/gnucash/android/model/ScheduledAction;

    .prologue
    .line 1090
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getActionType()Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v9

    sget-object v10, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-ne v9, v10, :cond_1

    .line 1091
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->shouldAutoCreate()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1092
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getEndTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getEndTime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gtz v9, :cond_1

    .line 1093
    :cond_0
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getTotalPlannedExecutionCount()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getExecutionCount()I

    move-result v9

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getTotalPlannedExecutionCount()I

    move-result v10

    if-lt v9, v10, :cond_2

    .line 1094
    :cond_1
    const/4 v2, 0x0

    .line 1123
    :goto_0
    return v2

    .line 1097
    :cond_2
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getStartTime()J

    move-result-wide v4

    .line 1098
    .local v4, "lastRuntime":J
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getLastRunTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    .line 1099
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getLastRunTime()J

    move-result-wide v4

    .line 1102
    :cond_3
    const/4 v2, 0x0

    .line 1103
    .local v2, "generatedTransactionCount":I
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getPeriod()J

    move-result-wide v6

    .line 1104
    .local v6, "period":J
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getActionUID()Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "actionUID":Ljava/lang/String;
    :cond_4
    :goto_1
    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-gtz v9, :cond_6

    .line 1106
    iget-object v9, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTemplateTransactions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Transaction;

    .line 1107
    .local v3, "templateTransaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {v3}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1108
    new-instance v8, Lorg/gnucash/android/model/Transaction;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v9}, Lorg/gnucash/android/model/Transaction;-><init>(Lorg/gnucash/android/model/Transaction;Z)V

    .line 1109
    .local v8, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {v8, v4, v5}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 1110
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getUID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/gnucash/android/model/Transaction;->setScheduledActionUID(Ljava/lang/String;)V

    .line 1111
    iget-object v9, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransactionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-virtual {v8}, Lorg/gnucash/android/model/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/gnucash/android/model/Transaction;->getSplits(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1115
    .local v1, "autoBalanceSplits":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    iget-object v9, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mAutoBalanceSplits:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1116
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getExecutionCount()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Lorg/gnucash/android/model/ScheduledAction;->setExecutionCount(I)V

    .line 1117
    add-int/lit8 v2, v2, 0x1

    .line 1118
    goto :goto_1

    .line 1122
    .end local v1    # "autoBalanceSplits":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    .end local v3    # "templateTransaction":Lorg/gnucash/android/model/Transaction;
    .end local v8    # "transaction":Lorg/gnucash/android/model/Transaction;
    :cond_6
    invoke-virtual {p1, v4, v5}, Lorg/gnucash/android/model/ScheduledAction;->setLastRun(J)V

    goto :goto_0
.end method

.method private getCommodityForAccount(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;
    .locals 2
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 1046
    :try_start_0
    iget-object v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/model/Account;

    invoke-virtual {v1}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1049
    :goto_0
    return-object v1

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 1049
    sget-object v1, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    goto :goto_0
.end method

.method private handleEndOfTemplateNumericSlot(Ljava/lang/String;Lorg/gnucash/android/model/TransactionType;)V
    .locals 9
    .param p1, "characterString"    # Ljava/lang/String;
    .param p2, "splitType"    # Lorg/gnucash/android/model/TransactionType;

    .prologue
    const/4 v8, 0x0

    .line 1061
    :try_start_0
    iget-object v4, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v4

    new-instance v5, Lorg/gnucash/android/model/Money;

    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iget-object v7, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    .line 1062
    invoke-virtual {v7}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v7

    invoke-virtual {v7}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 1061
    invoke-virtual {v4, v5}, Lorg/gnucash/android/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1063
    invoke-static {p1}, Lorg/gnucash/android/export/xml/GncXmlHelper;->parseSplitAmount(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1064
    .local v1, "amountBigD":Ljava/math/BigDecimal;
    new-instance v0, Lorg/gnucash/android/model/Money;

    iget-object v4, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/gnucash/android/importer/GncXmlHandler;->getCommodityForAccount(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 1066
    .local v0, "amount":Lorg/gnucash/android/model/Money;
    iget-object v4, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    invoke-virtual {v4, v0}, Lorg/gnucash/android/model/Split;->setValue(Lorg/gnucash/android/model/Money;)V

    .line 1067
    iget-object v4, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    invoke-virtual {v4, p2}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 1068
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreTemplateTransaction:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    .end local v0    # "amount":Lorg/gnucash/android/model/Money;
    .end local v1    # "amountBigD":Ljava/math/BigDecimal;
    :cond_0
    sget-object v4, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    if-ne p2, v4, :cond_1

    .line 1077
    iput-boolean v8, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInCreditNumericSlot:Z

    .line 1081
    :goto_0
    return-void

    .line 1079
    :cond_1
    iput-boolean v8, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInDebitNumericSlot:Z

    goto :goto_0

    .line 1070
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1071
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing template credit split amount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1072
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "GnuCashAccountImporter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 1074
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1076
    sget-object v4, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    if-ne p2, v4, :cond_2

    .line 1077
    iput-boolean v8, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInCreditNumericSlot:Z

    goto :goto_0

    .line 1079
    :cond_2
    iput-boolean v8, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInDebitNumericSlot:Z

    goto :goto_0

    .line 1076
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    if-ne p2, v5, :cond_3

    .line 1077
    iput-boolean v8, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInCreditNumericSlot:Z

    .line 1079
    :goto_2
    throw v4

    :cond_3
    iput-boolean v8, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInDebitNumericSlot:Z

    goto :goto_2

    .line 1070
    :catch_1
    move-exception v4

    move-object v2, v4

    goto :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    .line 298
    new-instance v2, Lorg/gnucash/android/model/Book;

    invoke-direct {v2}, Lorg/gnucash/android/model/Book;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBook:Lorg/gnucash/android/model/Book;

    .line 300
    new-instance v0, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBook:Lorg/gnucash/android/model/Book;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    .local v0, "databaseHelper":Lorg/gnucash/android/db/DatabaseHelper;
    invoke-virtual {v0}, Lorg/gnucash/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 302
    new-instance v2, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    iget-object v5, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v4, v5}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v2, v3, v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 303
    new-instance v2, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-direct {v2, v3, v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 304
    new-instance v1, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 305
    .local v1, "recurrenceDbAdapter":Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;
    new-instance v2, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3, v1}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledActionsDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    .line 306
    new-instance v2, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 307
    new-instance v2, Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    .line 308
    new-instance v2, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    iget-object v5, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v4, v5}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v2, v3, v4, v1}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mContent:Ljava/lang/StringBuilder;

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    .line 314
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountMap:Ljava/util/HashMap;

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransactionList:Ljava/util/List;

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledActionsList:Ljava/util/List;

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetList:Ljava/util/List;

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTemplatAccountList:Ljava/util/List;

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTemplateTransactions:Ljava/util/List;

    .line 321
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTemplateAccountToTransactionMap:Ljava/util/Map;

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mAutoBalanceSplits:Ljava/util/List;

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceList:Ljava/util/List;

    .line 326
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mCurrencyCount:Ljava/util/Map;

    .line 327
    return-void
.end method

.method private saveToDatabase()V
    .locals 24

    .prologue
    .line 982
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v2

    .line 983
    .local v2, "booksDbAdapter":Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBook:Lorg/gnucash/android/model/Book;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Book;->setRootAccountUID(Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBook:Lorg/gnucash/android/model/Book;

    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->generateDefaultBookName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Book;->setDisplayName(Ljava/lang/String;)V

    .line 987
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 988
    .local v16, "startTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->beginTransaction()V

    .line 989
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v18, "bulk insert starts"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->enableForeignKey(Z)V

    .line 994
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v18, "before clean up db"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->deleteAllRecords()I

    .line 996
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v18, "deb clean up done %d ns"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    move-object/from16 v18, v0

    sget-object v19, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v6

    .line 998
    .local v6, "nAccounts":J
    const-string v3, "Handler:"

    const-string v18, "%d accounts inserted"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledActionsDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledActionsList:Ljava/util/List;

    move-object/from16 v18, v0

    sget-object v19, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v10

    .line 1002
    .local v10, "nSchedActions":J
    const-string v3, "Handler:"

    const-string v18, "%d scheduled actions inserted"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTemplateTransactions:Ljava/util/List;

    move-object/from16 v18, v0

    sget-object v19, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v12

    .line 1005
    .local v12, "nTempTransactions":J
    const-string v3, "Handler:"

    const-string v18, "%d template transactions inserted"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransactionList:Ljava/util/List;

    move-object/from16 v18, v0

    sget-object v19, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v14

    .line 1008
    .local v14, "nTransactions":J
    const-string v3, "Handler:"

    const-string v18, "%d transactions inserted"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceList:Ljava/util/List;

    move-object/from16 v18, v0

    sget-object v19, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v8

    .line 1011
    .local v8, "nPrices":J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v18, "%d prices inserted"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1018
    .local v4, "endTime":J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v18, "bulk insert time: %d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sub-long v22, v4, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBook:Lorg/gnucash/android/model/Book;

    sget-object v18, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->enableForeignKey(Z)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->endTransaction()V

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1028
    return-void

    .line 1024
    .end local v4    # "endTime":J
    .end local v6    # "nAccounts":J
    .end local v8    # "nPrices":J
    .end local v10    # "nSchedActions":J
    .end local v12    # "nTempTransactions":J
    .end local v14    # "nTransactions":J
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->enableForeignKey(Z)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->endTransaction()V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mainDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method private setMinimalScheduledActionByDays()V
    .locals 4

    .prologue
    .line 1133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1134
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    invoke-virtual {v2}, Lorg/gnucash/android/model/ScheduledAction;->getStartTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1135
    iget-object v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v1

    const/4 v2, 0x7

    .line 1136
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1135
    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Recurrence;->setByDays(Ljava/util/List;)V

    .line 1137
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 874
    return-void
.end method

.method public endDocument()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-super/range {p0 .. p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 879
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 880
    .local v8, "mapFullName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 883
    .local v9, "mapImbalanceAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/gnucash/android/model/Account;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 884
    new-instance v18, Lorg/gnucash/android/model/Account;

    const-string v19, "ROOT"

    invoke-direct/range {v18 .. v19}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v18, v0

    sget-object v19, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    invoke-virtual/range {v18 .. v19}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_0
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getImbalanceAccountPrefix()Ljava/lang/String;

    move-result-object v7

    .line 893
    .local v7, "imbalancePrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Account;

    .line 894
    .local v3, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const/16 v17, 0x0

    .line 896
    .local v17, "topLevel":Z
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_2

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v19

    sget-object v20, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 898
    const/16 v17, 0x1

    .line 900
    :cond_2
    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 901
    :cond_3
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 902
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 908
    .end local v3    # "account":Lorg/gnucash/android/model/Account;
    .end local v17    # "topLevel":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAutoBalanceSplits:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/gnucash/android/model/Split;

    .line 910
    .local v15, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v15}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v4

    .line 911
    .local v4, "currencyCode":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/Account;

    .line 912
    .local v6, "imbAccount":Lorg/gnucash/android/model/Account;
    if-nez v6, :cond_5

    .line 913
    new-instance v6, Lorg/gnucash/android/model/Account;

    .end local v6    # "imbAccount":Lorg/gnucash/android/model/Account;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;Lorg/gnucash/android/model/Commodity;)V

    .line 914
    .restart local v6    # "imbAccount":Lorg/gnucash/android/model/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 915
    sget-object v19, Lorg/gnucash/android/model/AccountType;->BANK:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 916
    invoke-virtual {v9, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    :cond_5
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    goto :goto_1

    .line 922
    .end local v4    # "currencyCode":Ljava/lang/String;
    .end local v6    # "imbAccount":Lorg/gnucash/android/model/Account;
    .end local v15    # "split":Lorg/gnucash/android/model/Split;
    :cond_6
    new-instance v16, Ljava/util/Stack;

    invoke-direct/range {v16 .. v16}, Ljava/util/Stack;-><init>()V

    .line 923
    .local v16, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/gnucash/android/model/Account;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Account;

    .line 924
    .restart local v3    # "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_7

    .line 927
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    .line 930
    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Account;

    .line 931
    .local v2, "acc":Lorg/gnucash/android/model/Account;
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v19

    sget-object v20, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 933
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 937
    :cond_8
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v14

    .line 938
    .local v14, "parentUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/gnucash/android/model/Account;

    .line 941
    .local v12, "parentAccount":Lorg/gnucash/android/model/Account;
    invoke-virtual {v12}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v19

    sget-object v20, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 943
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 947
    :cond_9
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 948
    .local v13, "parentAccountFullName":Ljava/lang/String;
    if-nez v13, :cond_a

    .line 950
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 953
    :cond_a
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 954
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 953
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_2

    .line 958
    .end local v2    # "acc":Lorg/gnucash/android/model/Account;
    .end local v3    # "account":Lorg/gnucash/android/model/Account;
    .end local v12    # "parentAccount":Lorg/gnucash/android/model/Account;
    .end local v13    # "parentAccountFullName":Ljava/lang/String;
    .end local v14    # "parentUID":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Account;

    .line 959
    .restart local v3    # "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    goto :goto_3

    .line 962
    .end local v3    # "account":Lorg/gnucash/android/model/Account;
    :cond_c
    const-string v10, ""

    .line 963
    .local v10, "mostAppearedCurrency":Ljava/lang/String;
    const/4 v11, 0x0

    .line 964
    .local v11, "mostCurrencyAppearance":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCurrencyCount:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_d
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 965
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v11, :cond_d

    .line 966
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 967
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "mostAppearedCurrency":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "mostAppearedCurrency":Ljava/lang/String;
    goto :goto_4

    .line 970
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_e
    if-lez v11, :cond_f

    .line 971
    invoke-static {v10}, Lorg/gnucash/android/app/GnuCashApplication;->setDefaultCurrencyCode(Ljava/lang/String;)V

    .line 974
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/importer/GncXmlHandler;->saveToDatabase()V

    .line 975
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 30
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mContent:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "characterString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreElement:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreElement:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 415
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreElement:Ljava/lang/String;

    .line 417
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mContent:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 869
    :goto_0
    return-void

    .line 421
    :cond_1
    const/16 v23, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v23, :pswitch_data_0

    .line 868
    :cond_3
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mContent:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 421
    :sswitch_0
    const-string v24, "act:name"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x0

    goto :goto_1

    :sswitch_1
    const-string v24, "act:id"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x1

    goto :goto_1

    :sswitch_2
    const-string v24, "act:type"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x2

    goto :goto_1

    :sswitch_3
    const-string v24, "cmdty:space"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x3

    goto :goto_1

    :sswitch_4
    const-string v24, "cmdty:id"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x4

    goto :goto_1

    :sswitch_5
    const-string v24, "act:description"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x5

    goto :goto_1

    :sswitch_6
    const-string v24, "act:parent"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x6

    goto :goto_1

    :sswitch_7
    const-string v24, "gnc:account"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v24, "slot"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v24, "slot:key"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v24, "slot:value"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v24, "bgt:slots"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v24, "trn:id"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v24, "trn:description"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v24, "ts:date"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v24, "trn:recurrence_period"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v24, "split:id"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v24, "split:memo"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v24, "split:value"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v24, "split:quantity"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v24, "split:account"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v24, "trn:split"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v24, "gnc:transaction"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v24, "gnc:template-transactions"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v24, "sx:id"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v24, "sx:name"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v24, "sx:enabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string v24, "sx:autoCreate"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v24, "sx:num-occur"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v24, "recurrence:mult"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string v24, "recurrence:period_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string v24, "gdate"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string v24, "sx:templ-acct"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string v24, "gnc:recurrence"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string v24, "gnc:schedxaction"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string v24, "price:id"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string v24, "price:source"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string v24, "price:value"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string v24, "price:type"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string v24, "price"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x27

    goto/16 :goto_1

    :sswitch_28
    const-string v24, "gnc:budget"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string v24, "bgt:name"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string v24, "bgt:description"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string v24, "bgt:num-periods"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x2b

    goto/16 :goto_1

    :sswitch_2c
    const-string v24, "bgt:recurrence"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x2c

    goto/16 :goto_1

    .line 423
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Account;->setName(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 427
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Account;->setUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 430
    :pswitch_3
    invoke-static {v6}, Lorg/gnucash/android/model/AccountType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v4

    .line 431
    .local v4, "accountType":Lorg/gnucash/android/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v24, v0

    sget-object v23, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, v23

    if-ne v4, v0, :cond_4

    const/16 v23, 0x1

    :goto_3
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Account;->setHidden(Z)V

    goto/16 :goto_2

    :cond_4
    const/16 v23, 0x0

    goto :goto_3

    .line 435
    .end local v4    # "accountType":Lorg/gnucash/android/model/AccountType;
    :pswitch_4
    const-string v23, "ISO4217"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    const-string v23, "CURRENCY"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 436
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mISO4217Currency:Z

    goto/16 :goto_2

    .line 439
    :cond_6
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    goto/16 :goto_2

    .line 443
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mISO4217Currency:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    move-object v10, v6

    .line 444
    .local v10, "currencyCode":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v8

    .line 445
    .local v8, "commodity":Lorg/gnucash/android/model/Commodity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 446
    if-eqz v8, :cond_b

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/gnucash/android/model/Account;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCurrencyCount:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCurrencyCount:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCurrencyCount:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 461
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceCommodity:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Price;->setCommodityUID(Ljava/lang/String;)V

    .line 464
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceCommodity:Z

    .line 466
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceCurrency:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Price;->setCurrencyUID(Ljava/lang/String;)V

    .line 468
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceCurrency:Z

    goto/16 :goto_2

    .line 443
    .end local v8    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v10    # "currencyCode":Ljava/lang/String;
    :cond_a
    const-string v10, "XXX"

    goto/16 :goto_4

    .line 449
    .restart local v8    # "commodity":Lorg/gnucash/android/model/Commodity;
    .restart local v10    # "currencyCode":Ljava/lang/String;
    :cond_b
    new-instance v23, Lorg/xml/sax/SAXException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Commodity with \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\' currency code not found in the database"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 455
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mCurrencyCount:Ljava/util/Map;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 473
    .end local v8    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v10    # "currencyCode":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Account;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 476
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 479
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccountMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v23

    sget-object v24, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    if-nez v23, :cond_e

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mRootAccount:Lorg/gnucash/android/model/Account;

    .line 491
    :cond_d
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    .line 493
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mISO4217Currency:Z

    goto/16 :goto_2

    .line 487
    :cond_e
    new-instance v23, Lorg/xml/sax/SAXException;

    const-string v24, "Multiple ROOT accounts exist in book"

    invoke-direct/range {v23 .. v24}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 499
    :pswitch_9
    const/16 v23, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_1

    :cond_f
    :goto_6
    packed-switch v23, :pswitch_data_1

    .line 528
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInBudgetSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmountAccountUID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_10

    .line 529
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmountAccountUID:Ljava/lang/String;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/BudgetAmount;->setAccountUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 499
    :sswitch_2d
    const-string v24, "placeholder"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x0

    goto :goto_6

    :sswitch_2e
    const-string v24, "color"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x1

    goto :goto_6

    :sswitch_2f
    const-string v24, "favorite"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x2

    goto :goto_6

    :sswitch_30
    const-string v24, "notes"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x3

    goto :goto_6

    :sswitch_31
    const-string v24, "default_transfer_account"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x4

    goto :goto_6

    :sswitch_32
    const-string v24, "exported"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x5

    goto :goto_6

    :sswitch_33
    const-string v24, "account"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x6

    goto :goto_6

    :sswitch_34
    const-string v24, "credit-numeric"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x7

    goto/16 :goto_6

    :sswitch_35
    const-string v24, "debit-numeric"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x8

    goto/16 :goto_6

    .line 501
    :pswitch_a
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInPlaceHolderSlot:Z

    goto/16 :goto_7

    .line 504
    :pswitch_b
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInColorSlot:Z

    goto/16 :goto_7

    .line 507
    :pswitch_c
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInFavoriteSlot:Z

    goto/16 :goto_7

    .line 510
    :pswitch_d
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIsNote:Z

    goto/16 :goto_7

    .line 513
    :pswitch_e
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInDefaultTransferAccount:Z

    goto/16 :goto_7

    .line 516
    :pswitch_f
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInExported:Z

    goto/16 :goto_7

    .line 519
    :pswitch_10
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInSplitAccountSlot:Z

    goto/16 :goto_7

    .line 522
    :pswitch_11
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInCreditNumericSlot:Z

    goto/16 :goto_7

    .line 525
    :pswitch_12
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInDebitNumericSlot:Z

    goto/16 :goto_7

    .line 531
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInBudgetSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

    move-object/from16 v23, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/gnucash/android/model/BudgetAmount;->setPeriodNum(J)V

    goto/16 :goto_2

    .line 536
    :pswitch_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInPlaceHolderSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Account;->setPlaceHolderFlag(Z)V

    .line 539
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInPlaceHolderSlot:Z

    goto/16 :goto_2

    .line 540
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInColorSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_14

    .line 542
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 545
    .local v7, "color":Ljava/lang/String;
    const-string v23, "Not Set"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 547
    const-string v23, "^#(?:[0-9a-fA-F]{3}){2}$"

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 548
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".(.)?"

    const-string v25, "$1"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "null"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 550
    :cond_12
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/gnucash/android/model/Account;->setColor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_13
    :goto_8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInColorSlot:Z

    goto/16 :goto_2

    .line 552
    :catch_0
    move-exception v14

    .line 554
    .local v14, "ex":Ljava/lang/IllegalArgumentException;
    const-string v23, "GnuCashAccountImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid color code \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\' for account "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {v14}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 559
    .end local v7    # "color":Ljava/lang/String;
    .end local v14    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInFavoriteSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Account;->setFavorite(Z)V

    .line 561
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInFavoriteSlot:Z

    goto/16 :goto_2

    .line 562
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsNote:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Transaction;->setNote(Ljava/lang/String;)V

    .line 565
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIsNote:Z

    goto/16 :goto_2

    .line 567
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInDefaultTransferAccount:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Account;->setDefaultTransferAccountUID(Ljava/lang/String;)V

    .line 569
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInDefaultTransferAccount:Z

    goto/16 :goto_2

    .line 570
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInExported:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Transaction;->setExported(Z)V

    .line 573
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInExported:Z

    goto/16 :goto_2

    .line 575
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    move/from16 v23, v0

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInSplitAccountSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_19

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    .line 577
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInSplitAccountSlot:Z

    goto/16 :goto_2

    .line 578
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInCreditNumericSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 579
    sget-object v23, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lorg/gnucash/android/importer/GncXmlHandler;->handleEndOfTemplateNumericSlot(Ljava/lang/String;Lorg/gnucash/android/model/TransactionType;)V

    goto/16 :goto_2

    .line 580
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInDebitNumericSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 581
    sget-object v23, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lorg/gnucash/android/importer/GncXmlHandler;->handleEndOfTemplateNumericSlot(Ljava/lang/String;Lorg/gnucash/android/model/TransactionType;)V

    goto/16 :goto_2

    .line 582
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInBudgetSlot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSlotTagAttribute:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "numeric"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 585
    :try_start_1
    invoke-static {v6}, Lorg/gnucash/android/export/xml/GncXmlHelper;->parseSplitAmount(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 587
    .local v5, "bigDecimal":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

    move-object/from16 v23, v0

    new-instance v24, Lorg/gnucash/android/model/Money;

    sget-object v25, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v1}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/BudgetAmount;->setAmount(Lorg/gnucash/android/model/Money;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Budget;->addBudgetAmount(Lorg/gnucash/android/model/BudgetAmount;)V

    .line 594
    .end local v5    # "bigDecimal":Ljava/math/BigDecimal;
    :goto_9
    const-string v23, "frame"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mSlotTagAttribute:Ljava/lang/String;

    goto/16 :goto_2

    .line 588
    :catch_1
    move-exception v11

    .line 589
    .local v11, "e":Ljava/text/ParseException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

    move-object/from16 v23, v0

    invoke-static {}, Lorg/gnucash/android/model/Money;->getZeroInstance()Lorg/gnucash/android/model/Money;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/BudgetAmount;->setAmount(Lorg/gnucash/android/model/Money;)V

    .line 590
    invoke-virtual {v11}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Budget;->addBudgetAmount(Lorg/gnucash/android/model/BudgetAmount;)V

    goto :goto_9

    .end local v11    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/gnucash/android/model/Budget;->addBudgetAmount(Lorg/gnucash/android/model/BudgetAmount;)V

    throw v23

    .line 596
    :cond_1c
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmountAccountUID:Ljava/lang/String;

    goto/16 :goto_2

    .line 602
    :pswitch_14
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInBudgetSlot:Z

    goto/16 :goto_2

    .line 607
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Transaction;->setUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 610
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Transaction;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 614
    :pswitch_17
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsDatePosted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    invoke-static {v6}, Lorg/gnucash/android/export/xml/GncXmlHelper;->parseDate(Ljava/lang/String;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 616
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIsDatePosted:Z

    .line 618
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsDateEntered:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1e

    .line 619
    new-instance v22, Ljava/sql/Timestamp;

    invoke-static {v6}, Lorg/gnucash/android/export/xml/GncXmlHelper;->parseDate(Ljava/lang/String;)J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 620
    .local v22, "timestamp":Ljava/sql/Timestamp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Transaction;->setCreatedTimestamp(Ljava/sql/Timestamp;)V

    .line 621
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIsDateEntered:Z

    .line 623
    .end local v22    # "timestamp":Ljava/sql/Timestamp;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    new-instance v24, Ljava/sql/Timestamp;

    invoke-static {v6}, Lorg/gnucash/android/export/xml/GncXmlHelper;->parseDate(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Price;->setDate(Ljava/sql/Timestamp;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 626
    :catch_2
    move-exception v11

    .line 627
    .restart local v11    # "e":Ljava/text/ParseException;
    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 628
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to parse transaction time - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 629
    .local v16, "message":Ljava/lang/String;
    const-string v23, "GnuCashAccountImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static/range {v16 .. v16}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 631
    new-instance v23, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 635
    .end local v11    # "e":Ljava/text/ParseException;
    .end local v16    # "message":Ljava/lang/String;
    :pswitch_18
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrencePeriod:J

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrencePeriod:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v23, v26, v28

    if-lez v23, :cond_1f

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Transaction;->setTemplate(Z)V

    goto/16 :goto_2

    :cond_1f
    const/16 v23, 0x0

    goto :goto_a

    .line 639
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Split;->setUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 642
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Split;->setMemo(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 648
    :pswitch_1b
    move-object/from16 v20, v6

    .line 649
    .local v20, "q":Ljava/lang/String;
    const/16 v23, 0x0

    :try_start_4
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x2d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 650
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mNegativeQuantity:Z

    .line 651
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 655
    :goto_b
    invoke-static {v6}, Lorg/gnucash/android/export/xml/GncXmlHelper;->parseSplitAmount(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mValue:Ljava/math/BigDecimal;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 656
    :catch_3
    move-exception v11

    .line 657
    .restart local v11    # "e":Ljava/text/ParseException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error parsing split quantity - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 658
    .local v17, "msg":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 659
    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 660
    new-instance v23, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 653
    .end local v11    # "e":Ljava/text/ParseException;
    .end local v17    # "msg":Ljava/lang/String;
    :cond_20
    const/16 v23, 0x0

    :try_start_5
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mNegativeQuantity:Z
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    .line 666
    .end local v20    # "q":Ljava/lang/String;
    :pswitch_1c
    :try_start_6
    invoke-static {v6}, Lorg/gnucash/android/export/xml/GncXmlHelper;->parseSplitAmount(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mQuantity:Ljava/math/BigDecimal;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 667
    :catch_4
    move-exception v11

    .line 668
    .restart local v11    # "e":Ljava/text/ParseException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error parsing split quantity - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 669
    .restart local v17    # "msg":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 670
    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 671
    new-instance v23, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 675
    .end local v11    # "e":Ljava/text/ParseException;
    .end local v17    # "msg":Ljava/lang/String;
    :pswitch_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    move/from16 v23, v0

    if-nez v23, :cond_22

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mNegativeQuantity:Z

    move/from16 v23, v0

    if-eqz v23, :cond_21

    sget-object v23, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    :goto_c
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    move-object/from16 v23, v0

    new-instance v24, Lorg/gnucash/android/model/Money;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mQuantity:Ljava/math/BigDecimal;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/gnucash/android/importer/GncXmlHandler;->getCommodityForAccount(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    move-object/from16 v23, v0

    new-instance v24, Lorg/gnucash/android/model/Money;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mValue:Ljava/math/BigDecimal;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/gnucash/android/model/Transaction;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Split;->setValue(Lorg/gnucash/android/model/Money;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 677
    :cond_21
    sget-object v23, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    goto :goto_c

    .line 684
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreTemplateTransaction:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTemplateAccountToTransactionMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 690
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Transaction;->addSplit(Lorg/gnucash/android/model/Split;)V

    goto/16 :goto_2

    .line 693
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Transaction;->setTemplate(Z)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/gnucash/android/model/Transaction;->createAutoBalanceSplit()Lorg/gnucash/android/model/Split;

    move-result-object v15

    .line 695
    .local v15, "imbSplit":Lorg/gnucash/android/model/Split;
    if-eqz v15, :cond_23

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mAutoBalanceSplits:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    move/from16 v23, v0

    if-eqz v23, :cond_26

    .line 699
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreTemplateTransaction:Z

    move/from16 v23, v0

    if-nez v23, :cond_24

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTemplateTransactions:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_24
    :goto_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrencePeriod:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_25

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Transaction;->setTemplate(Z)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrencePeriod:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Lorg/gnucash/android/model/ScheduledAction;->parseScheduledAction(Lorg/gnucash/android/model/Transaction;J)Lorg/gnucash/android/model/ScheduledAction;

    move-result-object v21

    .line 707
    .local v21, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledActionsList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v21    # "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    :cond_25
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrencePeriod:J

    .line 710
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreTemplateTransaction:Z

    .line 711
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    goto/16 :goto_2

    .line 702
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransactionList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 714
    .end local v15    # "imbSplit":Lorg/gnucash/android/model/Split;
    :pswitch_20
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    goto/16 :goto_2

    .line 719
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/ScheduledAction;->setUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 722
    :pswitch_22
    sget-object v23, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-virtual/range {v23 .. v23}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_27

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    sget-object v24, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->setActionType(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V

    goto/16 :goto_2

    .line 725
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    sget-object v24, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->setActionType(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V

    goto/16 :goto_2

    .line 728
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    const-string v24, "y"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->setEnabled(Z)V

    goto/16 :goto_2

    .line 731
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    const-string v24, "y"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->setAutoCreate(Z)V

    goto/16 :goto_2

    .line 735
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->setTotalPlannedExecutionCount(I)V

    goto/16 :goto_2

    .line 738
    :pswitch_26
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrenceMultiplier:I

    goto/16 :goto_2

    .line 742
    :pswitch_27
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/gnucash/android/model/PeriodType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/PeriodType;

    move-result-object v19

    .line 743
    .local v19, "periodType":Lorg/gnucash/android/model/PeriodType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setPeriodType(Lorg/gnucash/android/model/PeriodType;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrenceMultiplier:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_2

    .line 745
    .end local v19    # "periodType":Lorg/gnucash/android/model/PeriodType;
    :catch_5
    move-exception v14

    .line 746
    .restart local v14    # "ex":Ljava/lang/IllegalArgumentException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unsupported period constant: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 747
    .restart local v17    # "msg":Ljava/lang/String;
    const-string v23, "GnuCashAccountImporter"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {v14}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 749
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreScheduledAction:Z

    goto/16 :goto_2

    .line 754
    .end local v14    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v17    # "msg":Ljava/lang/String;
    :pswitch_28
    :try_start_8
    sget-object v23, Lorg/gnucash/android/export/xml/GncXmlHelper;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 755
    .local v12, "date":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsScheduledStart:Z

    move/from16 v23, v0

    if-eqz v23, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_28

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    new-instance v24, Ljava/sql/Timestamp;

    move-object/from16 v0, v24

    invoke-direct {v0, v12, v13}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->setCreatedTimestamp(Ljava/sql/Timestamp;)V

    .line 757
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIsScheduledStart:Z

    .line 760
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsScheduledEnd:Z

    move/from16 v23, v0

    if-eqz v23, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_29

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lorg/gnucash/android/model/ScheduledAction;->setEndTime(J)V

    .line 762
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIsScheduledEnd:Z

    .line 765
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsLastRun:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2a

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lorg/gnucash/android/model/ScheduledAction;->setLastRun(J)V

    .line 767
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIsLastRun:Z

    .line 770
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsRecurrenceStart:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    move-object/from16 v23, v0

    new-instance v24, Ljava/sql/Timestamp;

    move-object/from16 v0, v24

    invoke-direct {v0, v12, v13}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Recurrence;->setPeriodStart(Ljava/sql/Timestamp;)V

    .line 772
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIsRecurrenceStart:Z
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_2

    .line 774
    .end local v12    # "date":J
    :catch_6
    move-exception v11

    .line 775
    .restart local v11    # "e":Ljava/text/ParseException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error parsing scheduled action date "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 776
    .restart local v17    # "msg":Ljava/lang/String;
    const-string v23, "GnuCashAccountImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 778
    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 779
    new-instance v23, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 783
    .end local v11    # "e":Ljava/text/ParseException;
    .end local v17    # "msg":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/gnucash/android/model/ScheduledAction;->getActionType()Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v23

    sget-object v24, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2b

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mTemplateAccountToTransactionMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/ScheduledAction;->setActionUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 786
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->setActionUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 790
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    goto/16 :goto_2

    .line 796
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/gnucash/android/model/ScheduledAction;->getActionUID()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreScheduledAction:Z

    move/from16 v23, v0

    if-nez v23, :cond_2d

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/gnucash/android/model/ScheduledAction;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v23

    sget-object v24, Lorg/gnucash/android/model/PeriodType;->WEEK:Lorg/gnucash/android/model/PeriodType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2c

    .line 799
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/importer/GncXmlHandler;->setMinimalScheduledActionByDays()V

    .line 801
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledActionsList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/gnucash/android/importer/GncXmlHandler;->generateMissedScheduledTransactions(Lorg/gnucash/android/model/ScheduledAction;)I

    move-result v9

    .line 803
    .local v9, "count":I
    const-string v23, "GnuCashAccountImporter"

    const-string v24, "Generated %d transactions from scheduled action"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v9    # "count":I
    :cond_2d
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mIgnoreScheduledAction:Z

    goto/16 :goto_2

    .line 809
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Price;->setUID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 812
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Price;->setSource(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 817
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 818
    const-string v23, "/"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 819
    .local v18, "parts":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2e

    .line 820
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Illegal price - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 821
    .restart local v16    # "message":Ljava/lang/String;
    const-string v23, "GnuCashAccountImporter"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static/range {v16 .. v16}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 823
    new-instance v23, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 825
    .end local v16    # "message":Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v18, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/gnucash/android/model/Price;->setValueNum(J)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v18, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/gnucash/android/model/Price;->setValueDenom(J)V

    .line 827
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "price "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " .. "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v25, v0

    .line 828
    invoke-virtual/range {v25 .. v25}, Lorg/gnucash/android/model/Price;->getValueNum()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/gnucash/android/model/Price;->getValueDenom()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 827
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 833
    .end local v18    # "parts":[Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Price;->setType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 838
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    goto/16 :goto_2

    .line 845
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/gnucash/android/model/Budget;->getBudgetAmounts()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_3

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 850
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Budget;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 854
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Budget;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 858
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v23, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/gnucash/android/model/Budget;->setNumberOfPeriods(J)V

    goto/16 :goto_2

    .line 862
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/gnucash/android/model/Budget;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    goto/16 :goto_2

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        -0x72d64285 -> :sswitch_10
        -0x6e6eab8b -> :sswitch_22
        -0x6c690980 -> :sswitch_19
        -0x6a481330 -> :sswitch_15
        -0x654e1f8d -> :sswitch_0
        -0x654b0ade -> :sswitch_2
        -0x5eee13f0 -> :sswitch_1c
        -0x593f6935 -> :sswitch_26
        -0x54d132fd -> :sswitch_1
        -0x50dfcf40 -> :sswitch_16
        -0x4ef1462f -> :sswitch_2a
        -0x4988670b -> :sswitch_a
        -0x46d86b6e -> :sswitch_6
        -0x46273b14 -> :sswitch_23
        -0x4614ad9a -> :sswitch_f
        -0x40cf491d -> :sswitch_9
        -0x400f9437 -> :sswitch_e
        -0x3939de23 -> :sswitch_20
        -0x339478db -> :sswitch_c
        -0x3043d6ec -> :sswitch_5
        -0x2af353dd -> :sswitch_28
        -0x29d405aa -> :sswitch_29
        -0x164dd266 -> :sswitch_11
        -0x10613036 -> :sswitch_b
        -0xd0ddea0 -> :sswitch_2b
        -0x9493094 -> :sswitch_24
        -0x8f6ea33 -> :sswitch_14
        -0x131fcf5 -> :sswitch_3
        0x35e9fe -> :sswitch_8
        0x279632a -> :sswitch_17
        0x5da6495 -> :sswitch_1f
        0x65fb149 -> :sswitch_27
        0x68c0250 -> :sswitch_18
        0xfee56bb -> :sswitch_2c
        0x1ce44ceb -> :sswitch_13
        0x1ff1b532 -> :sswitch_d
        0x31637c00 -> :sswitch_25
        0x3e26073a -> :sswitch_1d
        0x49b31bc0 -> :sswitch_1b
        0x4d108511 -> :sswitch_12
        0x635ac136 -> :sswitch_4
        0x66258f2c -> :sswitch_1a
        0x78e1290f -> :sswitch_7
        0x79468dae -> :sswitch_1e
        0x7c0c790e -> :sswitch_21
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch

    .line 499
    :sswitch_data_1
    .sparse-switch
        -0x72ccfcad -> :sswitch_32
        -0x462c75d3 -> :sswitch_33
        -0x11fb5fc7 -> :sswitch_34
        0x5a72f63 -> :sswitch_2e
        0x6424ec1 -> :sswitch_30
        0x23a88573 -> :sswitch_2d
        0x3ea1c99c -> :sswitch_2f
        0x604be72c -> :sswitch_35
        0x784d8417 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public getBookUID()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1035
    iget-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBook:Lorg/gnucash/android/model/Book;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 332
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 405
    :cond_1
    :goto_1
    return-void

    .line 332
    :sswitch_0
    const-string v3, "gnc:account"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "gnc:transaction"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "trn:split"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "trn:date-posted"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "trn:date-entered"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "gnc:template-transactions"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "gnc:schedxaction"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "sx:start"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "sx:end"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "sx:last"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "recurrence:start"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v3, "price"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    const-string v3, "price:currency"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "price:commodity"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "gnc:budget"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "gnc:recurrence"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "bgt:recurrence"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "bgt:slots"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "slot"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "slot:value"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    .line 334
    :pswitch_0
    new-instance v0, Lorg/gnucash/android/model/Account;

    const-string v2, ""

    invoke-direct {v0, v2}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mAccount:Lorg/gnucash/android/model/Account;

    .line 335
    iput-boolean v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mISO4217Currency:Z

    goto/16 :goto_1

    .line 338
    :pswitch_1
    new-instance v0, Lorg/gnucash/android/model/Transaction;

    const-string v3, ""

    invoke-direct {v0, v3}, Lorg/gnucash/android/model/Transaction;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    .line 339
    iget-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v0, v2}, Lorg/gnucash/android/model/Transaction;->setExported(Z)V

    .line 340
    iput-boolean v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mISO4217Currency:Z

    goto/16 :goto_1

    .line 343
    :pswitch_2
    new-instance v0, Lorg/gnucash/android/model/Split;

    invoke-static {}, Lorg/gnucash/android/model/Money;->getZeroInstance()Lorg/gnucash/android/model/Money;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mSplit:Lorg/gnucash/android/model/Split;

    goto/16 :goto_1

    .line 346
    :pswitch_3
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsDatePosted:Z

    goto/16 :goto_1

    .line 349
    :pswitch_4
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsDateEntered:Z

    goto/16 :goto_1

    .line 352
    :pswitch_5
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInTemplates:Z

    goto/16 :goto_1

    .line 356
    :pswitch_6
    new-instance v0, Lorg/gnucash/android/model/ScheduledAction;

    sget-object v1, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-direct {v0, v1}, Lorg/gnucash/android/model/ScheduledAction;-><init>(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mScheduledAction:Lorg/gnucash/android/model/ScheduledAction;

    goto/16 :goto_1

    .line 359
    :pswitch_7
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsScheduledStart:Z

    goto/16 :goto_1

    .line 362
    :pswitch_8
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsScheduledEnd:Z

    goto/16 :goto_1

    .line 365
    :pswitch_9
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsLastRun:Z

    goto/16 :goto_1

    .line 368
    :pswitch_a
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mIsRecurrenceStart:Z

    goto/16 :goto_1

    .line 371
    :pswitch_b
    new-instance v0, Lorg/gnucash/android/model/Price;

    invoke-direct {v0}, Lorg/gnucash/android/model/Price;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mPrice:Lorg/gnucash/android/model/Price;

    goto/16 :goto_1

    .line 374
    :pswitch_c
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceCurrency:Z

    .line 375
    iput-boolean v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceCommodity:Z

    .line 376
    iput-boolean v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mISO4217Currency:Z

    goto/16 :goto_1

    .line 379
    :pswitch_d
    iput-boolean v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceCurrency:Z

    .line 380
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mPriceCommodity:Z

    .line 381
    iput-boolean v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mISO4217Currency:Z

    goto/16 :goto_1

    .line 385
    :pswitch_e
    new-instance v0, Lorg/gnucash/android/model/Budget;

    invoke-direct {v0}, Lorg/gnucash/android/model/Budget;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    goto/16 :goto_1

    .line 390
    :pswitch_f
    iput v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrenceMultiplier:I

    .line 391
    new-instance v0, Lorg/gnucash/android/model/Recurrence;

    sget-object v1, Lorg/gnucash/android/model/PeriodType;->MONTH:Lorg/gnucash/android/model/PeriodType;

    invoke-direct {v0, v1}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    goto/16 :goto_1

    .line 394
    :pswitch_10
    iput-boolean v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInBudgetSlot:Z

    goto/16 :goto_1

    .line 397
    :pswitch_11
    iget-boolean v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mInBudgetSlot:Z

    if-eqz v0, :cond_1

    .line 398
    new-instance v0, Lorg/gnucash/android/model/BudgetAmount;

    iget-object v1, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmountAccountUID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/BudgetAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mBudgetAmount:Lorg/gnucash/android/model/BudgetAmount;

    goto/16 :goto_1

    .line 402
    :pswitch_12
    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/importer/GncXmlHandler;->mSlotTagAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        -0x79113068 -> :sswitch_a
        -0x6e6eab8b -> :sswitch_6
        -0x6c69f175 -> :sswitch_9
        -0x6a481330 -> :sswitch_2
        -0x50dfcf40 -> :sswitch_1
        -0x4988670b -> :sswitch_13
        -0x350bc5ba -> :sswitch_8
        -0x2f31081e -> :sswitch_4
        -0x2af353dd -> :sswitch_e
        -0x218a38de -> :sswitch_c
        -0x206938f3 -> :sswitch_7
        -0x10613036 -> :sswitch_11
        0x35e9fe -> :sswitch_12
        0x279632a -> :sswitch_5
        0x65fb149 -> :sswitch_b
        0xfee56bb -> :sswitch_10
        0x707d223c -> :sswitch_d
        0x78e1290f -> :sswitch_0
        0x7c0c790e -> :sswitch_f
        0x7ca84974 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
