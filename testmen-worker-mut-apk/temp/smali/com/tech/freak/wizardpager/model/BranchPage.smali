.class public Lcom/tech/freak/wizardpager/model/BranchPage;
.super Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;
.source "BranchPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tech/freak/wizardpager/model/BranchPage$1;,
        Lcom/tech/freak/wizardpager/model/BranchPage$Branch;
    }
.end annotation


# instance fields
.field private mBranches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tech/freak/wizardpager/model/BranchPage$Branch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/tech/freak/wizardpager/model/ModelCallbacks;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mBranches:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public varargs addBranch(Ljava/lang/String;[Lcom/tech/freak/wizardpager/model/Page;)Lcom/tech/freak/wizardpager/model/BranchPage;
    .locals 6
    .param p1, "choice"    # Ljava/lang/String;
    .param p2, "childPages"    # [Lcom/tech/freak/wizardpager/model/Page;

    .prologue
    .line 65
    new-instance v0, Lcom/tech/freak/wizardpager/model/PageList;

    invoke-direct {v0, p2}, Lcom/tech/freak/wizardpager/model/PageList;-><init>([Lcom/tech/freak/wizardpager/model/Page;)V

    .line 66
    .local v0, "childPageList":Lcom/tech/freak/wizardpager/model/PageList;
    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/PageList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tech/freak/wizardpager/model/Page;

    .line 67
    .local v2, "page":Lcom/tech/freak/wizardpager/model/Page;
    invoke-virtual {v2, p1}, Lcom/tech/freak/wizardpager/model/Page;->setParentKey(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v2    # "page":Lcom/tech/freak/wizardpager/model/Page;
    :cond_0
    iget-object v3, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mBranches:Ljava/util/List;

    new-instance v4, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v0, v5}, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;-><init>(Ljava/lang/String;Lcom/tech/freak/wizardpager/model/PageList;Lcom/tech/freak/wizardpager/model/BranchPage$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-object p0
.end method

.method public createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/BranchPage;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    move-result-object v0

    return-object v0
.end method

.method public findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/BranchPage;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    .end local p0    # "this":Lcom/tech/freak/wizardpager/model/BranchPage;
    :goto_0
    return-object p0

    .line 43
    .restart local p0    # "this":Lcom/tech/freak/wizardpager/model/BranchPage;
    :cond_0
    iget-object v3, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mBranches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;

    .line 44
    .local v0, "branch":Lcom/tech/freak/wizardpager/model/BranchPage$Branch;
    iget-object v3, v0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;->childPageList:Lcom/tech/freak/wizardpager/model/PageList;

    invoke-virtual {v3, p1}, Lcom/tech/freak/wizardpager/model/PageList;->findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v1

    .line 45
    .local v1, "found":Lcom/tech/freak/wizardpager/model/Page;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 46
    goto :goto_0

    .line 50
    .end local v0    # "branch":Lcom/tech/freak/wizardpager/model/BranchPage$Branch;
    .end local v1    # "found":Lcom/tech/freak/wizardpager/model/Page;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public flattenCurrentPageSequence(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tech/freak/wizardpager/model/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "destination":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/Page;>;"
    invoke-super {p0, p1}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->flattenCurrentPageSequence(Ljava/util/ArrayList;)V

    .line 56
    iget-object v2, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mBranches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;

    .line 57
    .local v0, "branch":Lcom/tech/freak/wizardpager/model/BranchPage$Branch;
    iget-object v2, v0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;->choice:Ljava/lang/String;

    iget-object v3, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mData:Landroid/os/Bundle;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, v0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;->childPageList:Lcom/tech/freak/wizardpager/model/PageList;

    invoke-virtual {v2, p1}, Lcom/tech/freak/wizardpager/model/PageList;->flattenCurrentPageSequence(Ljava/util/ArrayList;)V

    .line 62
    .end local v0    # "branch":Lcom/tech/freak/wizardpager/model/BranchPage$Branch;
    :cond_1
    return-void
.end method

.method public getOptionAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mBranches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;

    iget-object v0, v0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;->choice:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mBranches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReviewItems(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tech/freak/wizardpager/model/ReviewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    new-instance v0, Lcom/tech/freak/wizardpager/model/ReviewItem;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/BranchPage;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mData:Landroid/os/Bundle;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/BranchPage;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tech/freak/wizardpager/model/ReviewItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mData:Landroid/os/Bundle;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mCallbacks:Lcom/tech/freak/wizardpager/model/ModelCallbacks;

    invoke-interface {v0}, Lcom/tech/freak/wizardpager/model/ModelCallbacks;->onPageTreeChanged()V

    .line 99
    invoke-super {p0}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->notifyDataChanged()V

    .line 100
    return-void
.end method

.method public setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/BranchPage;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/BranchPage;->mData:Landroid/os/Bundle;

    const-string v1, "_"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/tech/freak/wizardpager/model/BranchPage;->setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/BranchPage;

    move-result-object v0

    return-object v0
.end method
