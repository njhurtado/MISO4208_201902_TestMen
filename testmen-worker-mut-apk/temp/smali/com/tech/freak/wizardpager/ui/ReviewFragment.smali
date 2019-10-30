.class public Lcom/tech/freak/wizardpager/ui/ReviewFragment;
.super Landroid/support/v4/app/ListFragment;
.source "ReviewFragment.java"

# interfaces
.implements Lcom/tech/freak/wizardpager/model/ModelCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;,
        Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;

.field private mCurrentReviewItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tech/freak/wizardpager/model/ReviewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewAdapter:Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;

.field private mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mCurrentReviewItems:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    instance-of v0, p1, Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement fragment\'s callbacks"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    check-cast p1, Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;

    .line 81
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;

    invoke-interface {v0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;->onGetModel()Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    .line 82
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    invoke-virtual {v0, p0}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->registerListener(Lcom/tech/freak/wizardpager/model/ModelCallbacks;)V

    .line 83
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->onPageTreeChanged()V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;-><init>(Lcom/tech/freak/wizardpager/ui/ReviewFragment;Lcom/tech/freak/wizardpager/ui/ReviewFragment$1;)V

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mReviewAdapter:Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    sget v3, Lcom/tech/freak/wizardpager/R$layout;->fragment_page:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "rootView":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, "titleView":Landroid/widget/TextView;
    sget v3, Lcom/tech/freak/wizardpager/R$string;->review:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tech/freak/wizardpager/R$color;->review_green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 66
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mReviewAdapter:Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;

    invoke-virtual {p0, v3}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 68
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;

    .line 96
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    invoke-virtual {v0, p0}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->unregisterListener(Lcom/tech/freak/wizardpager/model/ModelCallbacks;)V

    .line 97
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 120
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;

    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mCurrentReviewItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/model/ReviewItem;

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getPageKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;->onEditScreenAfterReview(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onPageDataChanged(Lcom/tech/freak/wizardpager/model/Page;)V
    .locals 4
    .param p1, "changedPage"    # Lcom/tech/freak/wizardpager/model/Page;

    .prologue
    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, "reviewItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->getCurrentPageSequence()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tech/freak/wizardpager/model/Page;

    .line 103
    .local v1, "page":Lcom/tech/freak/wizardpager/model/Page;
    invoke-virtual {v1, v2}, Lcom/tech/freak/wizardpager/model/Page;->getReviewItems(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 105
    .end local v1    # "page":Lcom/tech/freak/wizardpager/model/Page;
    :cond_0
    new-instance v3, Lcom/tech/freak/wizardpager/ui/ReviewFragment$1;

    invoke-direct {v3, p0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment$1;-><init>(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mCurrentReviewItems:Ljava/util/List;

    .line 113
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mReviewAdapter:Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->mReviewAdapter:Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;->notifyDataSetInvalidated()V

    .line 116
    :cond_1
    return-void
.end method

.method public onPageTreeChanged()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->onPageDataChanged(Lcom/tech/freak/wizardpager/model/Page;)V

    .line 89
    return-void
.end method
