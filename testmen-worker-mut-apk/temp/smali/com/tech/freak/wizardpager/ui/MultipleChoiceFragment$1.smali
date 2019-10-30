.class Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;
.super Ljava/lang/Object;
.source "MultipleChoiceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

    iput-object p2, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 91
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

    invoke-static {v3}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->access$000(Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    .local v1, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 104
    :cond_0
    return-void

    .line 97
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 99
    .local v2, "selectedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

    invoke-static {v3}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->access$100(Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

    invoke-static {v3}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->access$100(Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;->val$listView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
