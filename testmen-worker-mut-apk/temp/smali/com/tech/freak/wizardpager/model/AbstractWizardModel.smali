.class public abstract Lcom/tech/freak/wizardpager/model/AbstractWizardModel;
.super Ljava/lang/Object;
.source "AbstractWizardModel.java"

# interfaces
.implements Lcom/tech/freak/wizardpager/model/ModelCallbacks;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tech/freak/wizardpager/model/ModelCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mRootPageList:Lcom/tech/freak/wizardpager/model/PageList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mListeners:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->onNewRootPageList()Lcom/tech/freak/wizardpager/model/PageList;

    move-result-object v0

    iput-object v0, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mRootPageList:Lcom/tech/freak/wizardpager/model/PageList;

    .line 40
    return-void
.end method


# virtual methods
.method public findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mRootPageList:Lcom/tech/freak/wizardpager/model/PageList;

    invoke-virtual {v0, p1}, Lcom/tech/freak/wizardpager/model/PageList;->findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageSequence()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tech/freak/wizardpager/model/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "flattened":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/Page;>;"
    iget-object v1, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mRootPageList:Lcom/tech/freak/wizardpager/model/PageList;

    invoke-virtual {v1, v0}, Lcom/tech/freak/wizardpager/model/PageList;->flattenCurrentPageSequence(Ljava/util/ArrayList;)V

    .line 94
    return-object v0
.end method

.method public load(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedValues"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mRootPageList:Lcom/tech/freak/wizardpager/model/PageList;

    invoke-virtual {v2, v1}, Lcom/tech/freak/wizardpager/model/PageList;->findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tech/freak/wizardpager/model/Page;->resetData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 73
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract onNewRootPageList()Lcom/tech/freak/wizardpager/model/PageList;
.end method

.method public onPageDataChanged(Lcom/tech/freak/wizardpager/model/Page;)V
    .locals 2
    .param p1, "page"    # Lcom/tech/freak/wizardpager/model/Page;

    .prologue
    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tech/freak/wizardpager/model/ModelCallbacks;

    invoke-interface {v1, p1}, Lcom/tech/freak/wizardpager/model/ModelCallbacks;->onPageDataChanged(Lcom/tech/freak/wizardpager/model/Page;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public onPageTreeChanged()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tech/freak/wizardpager/model/ModelCallbacks;

    invoke-interface {v1}, Lcom/tech/freak/wizardpager/model/ModelCallbacks;->onPageTreeChanged()V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/tech/freak/wizardpager/model/ModelCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/tech/freak/wizardpager/model/ModelCallbacks;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public save()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->getCurrentPageSequence()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tech/freak/wizardpager/model/Page;

    .line 82
    .local v2, "page":Lcom/tech/freak/wizardpager/model/Page;
    invoke-virtual {v2}, Lcom/tech/freak/wizardpager/model/Page;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 84
    .end local v2    # "page":Lcom/tech/freak/wizardpager/model/Page;
    :cond_0
    return-object v0
.end method

.method public unregisterListener(Lcom/tech/freak/wizardpager/model/ModelCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/tech/freak/wizardpager/model/ModelCallbacks;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method
