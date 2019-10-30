.class Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;
.super Ljava/lang/Object;
.source "SingleChoiceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    iput-object p2, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    invoke-static {v2}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->access$000(Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    invoke-static {v2}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->access$100(Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    invoke-static {v2}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->access$100(Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;->val$listView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 95
    :cond_0
    return-void

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
