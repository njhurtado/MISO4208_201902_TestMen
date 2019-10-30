.class public Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;
.super Landroid/support/v4/app/ListFragment;
.source "CurrencySelectFragment.java"


# instance fields
.field private mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

.field private mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

.field private mPage:Lorg/gnucash/android/ui/wizard/CurrencySelectPage;

.field mPageKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;-><init>()V

    .line 54
    .local v0, "fragment":Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;
    iput-object p0, v0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mPageKey:Ljava/lang/String;

    .line 55
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lorg/gnucash/android/util/CommoditiesCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0076

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/util/CommoditiesCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 76
    .local v0, "commoditiesCursorAdapter":Lorg/gnucash/android/util/CommoditiesCursorAdapter;
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-virtual {p0}, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 80
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 81
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    instance-of v0, p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement PageFragmentCallbacks"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    check-cast p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mPageKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;->onGetPage(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/wizard/CurrencySelectPage;

    iput-object v0, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mPage:Lorg/gnucash/android/ui/wizard/CurrencySelectPage;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v1, 0x7f0b0066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 62
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 97
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 103
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-virtual {v2, p4, p5}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "currencyCode":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/CurrencySelectFragment;->mPage:Lorg/gnucash/android/ui/wizard/CurrencySelectPage;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/wizard/CurrencySelectPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "currency_code_data_key"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
