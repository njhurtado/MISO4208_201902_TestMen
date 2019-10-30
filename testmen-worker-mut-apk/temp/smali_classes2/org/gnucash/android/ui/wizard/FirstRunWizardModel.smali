.class public Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;
.super Lcom/tech/freak/wizardpager/model/AbstractWizardModel;
.source "FirstRunWizardModel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onNewRootPageList()Lcom/tech/freak/wizardpager/model/PageList;
    .locals 15

    .prologue
    const v10, 0x7f0f0268

    const/4 v11, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 44
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "defaultCurrencyCode":Ljava/lang/String;
    new-instance v5, Lcom/tech/freak/wizardpager/model/BranchPage;

    iget-object v6, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v7, 0x7f0f026e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/tech/freak/wizardpager/model/BranchPage;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    .line 47
    .local v5, "defaultCurrencyPage":Lcom/tech/freak/wizardpager/model/BranchPage;
    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    aput-object v4, v0, v13

    const-string v6, "CHF"

    aput-object v6, v0, v12

    const-string v6, "EUR"

    aput-object v6, v0, v14

    const-string v6, "GBP"

    aput-object v6, v0, v11

    const/4 v6, 0x4

    const-string v7, "USD"

    aput-object v7, v0, v6

    .line 48
    .local v0, "currencies":[Ljava/lang/String;
    new-instance v2, Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 51
    .local v2, "currencySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tech/freak/wizardpager/model/BranchPage;->setChoices([Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;

    .line 52
    invoke-virtual {v5, v12}, Lcom/tech/freak/wizardpager/model/BranchPage;->setRequired(Z)Lcom/tech/freak/wizardpager/model/Page;

    .line 53
    invoke-virtual {v5, v4}, Lcom/tech/freak/wizardpager/model/BranchPage;->setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/BranchPage;

    .line 55
    new-instance v6, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;

    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v8, 0x7f0f026d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    new-array v7, v11, [Ljava/lang/String;

    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v9, 0x7f0f026b

    .line 57
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v9, 0x7f0f026c

    .line 58
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    .line 56
    invoke-virtual {v6, v7}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->setChoices([Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;

    move-result-object v6

    .line 60
    invoke-virtual {v6, v12}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->setRequired(Z)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v3

    .line 61
    .local v3, "defaultAccountsPage":Lcom/tech/freak/wizardpager/model/Page;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "currency":Ljava/lang/String;
    new-array v7, v12, [Lcom/tech/freak/wizardpager/model/Page;

    aput-object v3, v7, v13

    invoke-virtual {v5, v1, v7}, Lcom/tech/freak/wizardpager/model/BranchPage;->addBranch(Ljava/lang/String;[Lcom/tech/freak/wizardpager/model/Page;)Lcom/tech/freak/wizardpager/model/BranchPage;

    goto :goto_0

    .line 65
    .end local v1    # "currency":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0269

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v14, [Lcom/tech/freak/wizardpager/model/Page;

    new-instance v8, Lorg/gnucash/android/ui/wizard/CurrencySelectPage;

    iget-object v9, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0270

    .line 66
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lorg/gnucash/android/ui/wizard/CurrencySelectPage;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    aput-object v8, v7, v13

    aput-object v3, v7, v12

    .line 65
    invoke-virtual {v5, v6, v7}, Lcom/tech/freak/wizardpager/model/BranchPage;->addBranch(Ljava/lang/String;[Lcom/tech/freak/wizardpager/model/Page;)Lcom/tech/freak/wizardpager/model/BranchPage;

    move-result-object v6

    .line 66
    invoke-virtual {v6, v12}, Lcom/tech/freak/wizardpager/model/BranchPage;->setRequired(Z)Lcom/tech/freak/wizardpager/model/Page;

    .line 67
    new-instance v6, Lcom/tech/freak/wizardpager/model/PageList;

    new-array v7, v11, [Lcom/tech/freak/wizardpager/model/Page;

    new-instance v8, Lorg/gnucash/android/ui/wizard/WelcomePage;

    iget-object v9, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0271

    .line 68
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lorg/gnucash/android/ui/wizard/WelcomePage;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    aput-object v8, v7, v13

    aput-object v5, v7, v12

    new-instance v8, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;

    iget-object v9, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v10, 0x7f0f026f

    .line 70
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    new-array v9, v14, [Ljava/lang/String;

    iget-object v10, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0267

    .line 71
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    iget-object v10, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;->mContext:Landroid/content/Context;

    const v11, 0x7f0f026a

    .line 72
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 71
    invoke-virtual {v8, v9}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->setChoices([Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;

    move-result-object v8

    .line 73
    invoke-virtual {v8, v12}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->setRequired(Z)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-direct {v6, v7}, Lcom/tech/freak/wizardpager/model/PageList;-><init>([Lcom/tech/freak/wizardpager/model/Page;)V

    .line 67
    return-object v6
.end method
