.class public Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;
.super Lcom/tech/freak/wizardpager/model/Page;
.source "SingleFixedChoicePage.java"


# instance fields
.field protected mChoices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
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
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tech/freak/wizardpager/model/Page;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->mChoices:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    move-result-object v0

    return-object v0
.end method

.method public getOptionAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->mChoices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOptionCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->mChoices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    .line 51
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    new-instance v0, Lcom/tech/freak/wizardpager/model/ReviewItem;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->mData:Landroid/os/Bundle;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tech/freak/wizardpager/model/ReviewItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->mData:Landroid/os/Bundle;

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

.method public varargs setChoices([Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;
    .locals 2
    .param p1, "choices"    # [Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->mChoices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->mData:Landroid/os/Bundle;

    const-string v1, "_"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object p0
.end method
