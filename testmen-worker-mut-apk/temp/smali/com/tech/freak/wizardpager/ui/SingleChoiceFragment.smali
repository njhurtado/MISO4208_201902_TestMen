.class public Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SingleChoiceFragment.java"


# static fields
.field private static final ARG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

.field private mChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mPage:Lcom/tech/freak/wizardpager/model/Page;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;)Lcom/tech/freak/wizardpager/model/Page;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mChoices:Ljava/util/List;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;

    invoke-direct {v1}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;-><init>()V

    .line 49
    .local v1, "fragment":Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;
    invoke-virtual {v1, v0}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 105
    instance-of v0, p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement PageFragmentCallbacks"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    check-cast p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mKey:Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    iget-object v4, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;->onGetPage(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v3

    iput-object v3, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    .line 64
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    check-cast v1, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;

    .line 65
    .local v1, "fixedChoicePage":Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mChoices:Ljava/util/List;

    .line 66
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->getOptionCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mChoices:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/tech/freak/wizardpager/model/SingleFixedChoicePage;->getOptionAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    sget v2, Lcom/tech/freak/wizardpager/R$layout;->fragment_page:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 78
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x109000f

    const v5, 0x1020014

    iget-object v6, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mChoices:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 85
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment$1;-><init>(Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 116
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/SingleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/Page;->notifyDataChanged()V

    .line 123
    return-void
.end method
