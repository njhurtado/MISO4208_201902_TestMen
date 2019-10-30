.class public Lcom/tech/freak/wizardpager/model/TextPage;
.super Lcom/tech/freak/wizardpager/model/Page;
.source "TextPage.java"


# direct methods
.method public constructor <init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/tech/freak/wizardpager/model/ModelCallbacks;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/tech/freak/wizardpager/model/Page;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/TextPage;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/TextFragment;->create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/TextFragment;

    move-result-object v0

    return-object v0
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
    .line 22
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    new-instance v0, Lcom/tech/freak/wizardpager/model/ReviewItem;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/TextPage;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tech/freak/wizardpager/model/TextPage;->mData:Landroid/os/Bundle;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/TextPage;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tech/freak/wizardpager/model/ReviewItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/TextPage;->mData:Landroid/os/Bundle;

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

.method public setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/TextPage;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/TextPage;->mData:Landroid/os/Bundle;

    const-string v1, "_"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object p0
.end method
