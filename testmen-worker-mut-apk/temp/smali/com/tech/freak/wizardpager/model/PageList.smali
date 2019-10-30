.class public Lcom/tech/freak/wizardpager/model/PageList;
.super Ljava/util/ArrayList;
.source "PageList.java"

# interfaces
.implements Lcom/tech/freak/wizardpager/model/PageTreeNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/tech/freak/wizardpager/model/Page;",
        ">;",
        "Lcom/tech/freak/wizardpager/model/PageTreeNode;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x27461455d07a4727L


# direct methods
.method public varargs constructor <init>([Lcom/tech/freak/wizardpager/model/Page;)V
    .locals 4
    .param p1, "pages"    # [Lcom/tech/freak/wizardpager/model/Page;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    move-object v0, p1

    .local v0, "arr$":[Lcom/tech/freak/wizardpager/model/Page;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 32
    .local v3, "page":Lcom/tech/freak/wizardpager/model/Page;
    invoke-virtual {p0, v3}, Lcom/tech/freak/wizardpager/model/PageList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v3    # "page":Lcom/tech/freak/wizardpager/model/Page;
    :cond_0
    return-void
.end method


# virtual methods
.method public findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/PageList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/model/Page;

    .line 39
    .local v0, "childPage":Lcom/tech/freak/wizardpager/model/Page;
    invoke-virtual {v0, p1}, Lcom/tech/freak/wizardpager/model/Page;->findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v1

    .line 40
    .local v1, "found":Lcom/tech/freak/wizardpager/model/Page;
    if-eqz v1, :cond_0

    .line 45
    .end local v0    # "childPage":Lcom/tech/freak/wizardpager/model/Page;
    .end local v1    # "found":Lcom/tech/freak/wizardpager/model/Page;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public flattenCurrentPageSequence(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 50
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/Page;>;"
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/PageList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/model/Page;

    .line 51
    .local v0, "childPage":Lcom/tech/freak/wizardpager/model/Page;
    invoke-virtual {v0, p1}, Lcom/tech/freak/wizardpager/model/Page;->flattenCurrentPageSequence(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 53
    .end local v0    # "childPage":Lcom/tech/freak/wizardpager/model/Page;
    :cond_0
    return-void
.end method
