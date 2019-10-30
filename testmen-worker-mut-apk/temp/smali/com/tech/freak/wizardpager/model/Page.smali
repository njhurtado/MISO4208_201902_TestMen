.class public abstract Lcom/tech/freak/wizardpager/model/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lcom/tech/freak/wizardpager/model/PageTreeNode;


# static fields
.field public static final SIMPLE_DATA_KEY:Ljava/lang/String; = "_"


# instance fields
.field protected mCallbacks:Lcom/tech/freak/wizardpager/model/ModelCallbacks;

.field protected mData:Landroid/os/Bundle;

.field protected mParentKey:Ljava/lang/String;

.field protected mRequired:Z

.field protected mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/tech/freak/wizardpager/model/ModelCallbacks;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tech/freak/wizardpager/model/Page;->mData:Landroid/os/Bundle;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tech/freak/wizardpager/model/Page;->mRequired:Z

    .line 44
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/Page;->mCallbacks:Lcom/tech/freak/wizardpager/model/ModelCallbacks;

    .line 45
    iput-object p2, p0, Lcom/tech/freak/wizardpager/model/Page;->mTitle:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public abstract createFragment()Landroid/support/v4/app/Fragment;
.end method

.method public findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/Page;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/tech/freak/wizardpager/model/Page;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/tech/freak/wizardpager/model/Page;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public flattenCurrentPageSequence(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 71
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/Page;>;"
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/Page;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/Page;->mParentKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tech/freak/wizardpager/model/Page;->mParentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tech/freak/wizardpager/model/Page;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/Page;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract getReviewItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tech/freak/wizardpager/model/ReviewItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/Page;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tech/freak/wizardpager/model/Page;->mRequired:Z

    return v0
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/Page;->mCallbacks:Lcom/tech/freak/wizardpager/model/ModelCallbacks;

    invoke-interface {v0, p0}, Lcom/tech/freak/wizardpager/model/ModelCallbacks;->onPageDataChanged(Lcom/tech/freak/wizardpager/model/Page;)V

    .line 93
    return-void
.end method

.method public resetData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/Page;->mData:Landroid/os/Bundle;

    .line 88
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/Page;->notifyDataChanged()V

    .line 89
    return-void
.end method

.method setParentKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/Page;->mParentKey:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setRequired(Z)Lcom/tech/freak/wizardpager/model/Page;
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/tech/freak/wizardpager/model/Page;->mRequired:Z

    .line 97
    return-object p0
.end method
