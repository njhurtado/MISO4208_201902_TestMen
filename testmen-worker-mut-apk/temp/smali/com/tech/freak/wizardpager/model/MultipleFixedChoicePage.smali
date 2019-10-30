.class public Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;
.super Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;
.source "MultipleFixedChoicePage.java"


# direct methods
.method public constructor <init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/tech/freak/wizardpager/model/ModelCallbacks;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

    move-result-object v0

    return-object v0
.end method

.method public getReviewItems(Ljava/util/ArrayList;)V
    .locals 8
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
    .line 39
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;->mData:Landroid/os/Bundle;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 42
    .local v3, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "selection":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 45
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "selection":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/tech/freak/wizardpager/model/ReviewItem;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/tech/freak/wizardpager/model/ReviewItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public isCompleted()Z
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;->mData:Landroid/os/Bundle;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    .local v0, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
