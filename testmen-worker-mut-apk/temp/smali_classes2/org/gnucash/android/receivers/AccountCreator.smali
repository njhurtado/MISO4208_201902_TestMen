.class public Lorg/gnucash/android/receivers/AccountCreator;
.super Landroid/content/BroadcastReceiver;
.source "AccountCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const-string v5, "Gnucash"

    const-string v6, "Received account creation intent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 48
    .local v1, "args":Landroid/os/Bundle;
    new-instance v0, Lorg/gnucash/android/model/Account;

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "account":Lorg/gnucash/android/model/Account;
    const-string v5, "org.gnucash.android.extra.parent_uid"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 51
    const-string v5, "org.gnucash.android.extra.currency_code"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "currencyCode":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 53
    invoke-static {v3}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    .line 54
    .local v2, "commodity":Lorg/gnucash/android/model/Commodity;
    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v0, v2}, Lorg/gnucash/android/model/Account;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 62
    .end local v2    # "commodity":Lorg/gnucash/android/model/Commodity;
    :cond_0
    const-string v5, "android.intent.extra.UID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "uid":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setUID(Ljava/lang/String;)V

    .line 66
    :cond_1
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v5

    sget-object v6, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v5, v0, v6}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->addRecord(Lorg/gnucash/android/model/Account;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 67
    return-void

    .line 57
    .end local v4    # "uid":Ljava/lang/String;
    .restart local v2    # "commodity":Lorg/gnucash/android/model/Commodity;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Commodity with \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' currency code not found in the database"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
