.class Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tech/freak/wizardpager/ui/ReviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReviewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;


# direct methods
.method private constructor <init>(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;->this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tech/freak/wizardpager/ui/ReviewFragment;Lcom/tech/freak/wizardpager/ui/ReviewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tech/freak/wizardpager/ui/ReviewFragment;
    .param p2, "x1"    # Lcom/tech/freak/wizardpager/ui/ReviewFragment$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;-><init>(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;->this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->access$100(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;->this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->access$100(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;->this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->access$100(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/model/ReviewItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 161
    iget-object v4, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;->this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    invoke-virtual {v4}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 162
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/tech/freak/wizardpager/R$layout;->list_item_review:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, "rootView":Landroid/view/View;
    iget-object v4, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment$ReviewAdapter;->this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    invoke-static {v4}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;->access$100(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tech/freak/wizardpager/model/ReviewItem;

    .line 165
    .local v1, "reviewItem":Lcom/tech/freak/wizardpager/model/ReviewItem;
    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const-string v3, "(None)"

    .line 169
    :cond_0
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const v4, 0x1020015

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method
