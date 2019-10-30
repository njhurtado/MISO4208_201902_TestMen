.class public Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;
.super Landroid/support/v4/app/ListFragment;
.source "MultipleChoiceFragment.java"


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
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;)Lcom/tech/freak/wizardpager/model/Page;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mChoices:Ljava/util/List;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;

    invoke-direct {v1}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;-><init>()V

    .line 52
    .local v1, "fragment":Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;
    invoke-virtual {v1, v0}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 114
    instance-of v0, p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement PageFragmentCallbacks"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    check-cast p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mKey:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    iget-object v4, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;->onGetPage(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v3

    iput-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    .line 67
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    check-cast v1, Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;

    .line 68
    .local v1, "fixedChoicePage":Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mChoices:Ljava/util/List;

    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;->getOptionCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mChoices:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/tech/freak/wizardpager/model/MultipleFixedChoicePage;->getOptionAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    sget v2, Lcom/tech/freak/wizardpager/R$layout;->fragment_page:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 81
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090010

    const v5, 0x1020014

    iget-object v6, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mChoices:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 88
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment$1;-><init>(Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 125
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 130
    .local v0, "checkedPositions":Landroid/util/SparseBooleanArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 132
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 138
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/MultipleChoiceFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/model/Page;->notifyDataChanged()V

    .line 139
    return-void
.end method
