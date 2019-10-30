.class public abstract Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;
.super Landroid/widget/BaseAdapter;
.source "InstantAnswersAdapter.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;
    }
.end annotation


# instance fields
.field protected BUTTON:I

.field protected EMAIL_FIELD:I

.field protected HEADING:I

.field protected INSTANT_ANSWER:I

.field protected LOADING:I

.field protected NAME_FIELD:I

.field protected SPACE:I

.field protected TEXT:I

.field protected context:Landroid/support/v4/app/FragmentActivity;

.field protected continueButtonMessage:I

.field protected deflectingType:Ljava/lang/String;

.field protected emailField:Landroid/widget/EditText;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected instantAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field protected isPosting:Z

.field protected nameField:Landroid/widget/EditText;

.field protected state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

.field protected textField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->TEXT:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->BUTTON:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->HEADING:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->LOADING:I

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->EMAIL_FIELD:I

    .line 47
    const/4 v0, 0x6

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->NAME_FIELD:I

    .line 48
    const/4 v0, 0x7

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->SPACE:I

    .line 50
    sget-object v0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INIT:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    .line 62
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    .line 63
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method


# virtual methods
.method protected abstract doSubmit()V
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getDetailRows()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getItemViewType(I)I

    move-result v0

    .line 265
    .local v0, "type":I
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    if-ne v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->instantAnswers:Ljava/util/List;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getRows()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 314
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->LOADING:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getRows()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->TEXT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INIT:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INIT_LOADING:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->instantAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->SPACE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->HEADING:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INSTANT_ANSWERS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->DETAILS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-ne v1, v2, :cond_4

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->instantAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 86
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->instantAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 88
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->instantAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    .line 90
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->DETAILS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-ne v1, v2, :cond_5

    .line 93
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->SPACE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getDetailRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_5
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->BUTTON:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-object v0
.end method

.method protected abstract getSubmitString()Ljava/lang/String;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .prologue
    .line 152
    move-object v8, p2

    .line 153
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getItemViewType(I)I

    move-result v7

    .line 154
    .local v7, "type":I
    if-nez v8, :cond_0

    .line 155
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->LOADING:I

    if-ne v7, v9, :cond_2

    .line 156
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/uservoice/uservoicesdk/R$layout;->uv_loading_item:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 200
    :cond_0
    :goto_0
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->BUTTON:I

    if-ne v7, v9, :cond_a

    .line 201
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_contact_button:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 202
    .local v0, "button":Landroid/widget/Button;
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v10, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INIT_LOADING:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-eq v9, v10, :cond_9

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    sget-object v9, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$4;->$SwitchMap$com$uservoice$uservoicesdk$ui$InstantAnswersAdapter$State:[I

    iget-object v10, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    invoke-virtual {v10}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 248
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    :goto_2
    return-object v8

    .line 157
    :cond_2
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->BUTTON:I

    if-ne v7, v9, :cond_3

    .line 158
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/uservoice/uservoicesdk/R$layout;->uv_contact_button_item:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 159
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_contact_button:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 160
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v9, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$1;

    invoke-direct {v9, p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$1;-><init>(Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 166
    .end local v0    # "button":Landroid/widget/Button;
    :cond_3
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->HEADING:I

    if-ne v7, v9, :cond_4

    .line 167
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/uservoice/uservoicesdk/R$layout;->uv_header_item:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_0

    .line 168
    :cond_4
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    if-ne v7, v9, :cond_5

    .line 169
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/uservoice/uservoicesdk/R$layout;->uv_instant_answer_item:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_0

    .line 170
    :cond_5
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->SPACE:I

    if-ne v7, v9, :cond_6

    .line 171
    new-instance v8, Landroid/widget/LinearLayout;

    .end local v8    # "view":Landroid/view/View;
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 172
    .restart local v8    # "view":Landroid/view/View;
    const/4 v9, 0x0

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 173
    :cond_6
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->TEXT:I

    if-ne v7, v9, :cond_7

    .line 174
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/uservoice/uservoicesdk/R$layout;->uv_contact_text_item:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 175
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 176
    .local v1, "field":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {p0, v9, v1, v10}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->restoreEnteredText(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 177
    iput-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    .line 178
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    new-instance v10, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$2;

    invoke-direct {v10, p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$2;-><init>(Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 195
    .end local v1    # "field":Landroid/widget/EditText;
    :cond_7
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->EMAIL_FIELD:I

    if-eq v7, v9, :cond_8

    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->NAME_FIELD:I

    if-ne v7, v9, :cond_0

    .line 196
    :cond_8
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_field_item:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_0

    .line 202
    .restart local v0    # "button":Landroid/widget/Button;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 205
    :pswitch_0
    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_next:I

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 208
    :pswitch_1
    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_loading:I

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 211
    :pswitch_2
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->continueButtonMessage:I

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 214
    :pswitch_3
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getSubmitString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 217
    .end local v0    # "button":Landroid/widget/Button;
    :cond_a
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    if-ne v7, v9, :cond_c

    .line 218
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/uservoice/uservoicesdk/model/BaseModel;

    invoke-static {v8, v9}, Lcom/uservoice/uservoicesdk/ui/Utils;->displayInstantAnswer(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/BaseModel;)V

    .line 219
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_divider:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getRows()Ljava/util/List;

    move-result-object v9

    iget v11, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, p1, :cond_b

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 220
    :cond_c
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->EMAIL_FIELD:I

    if-eq v7, v9, :cond_d

    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->NAME_FIELD:I

    if-ne v7, v9, :cond_f

    .line 221
    :cond_d
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 222
    .local v6, "title":Landroid/widget/TextView;
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_text_field:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 223
    .restart local v1    # "field":Landroid/widget/EditText;
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->EMAIL_FIELD:I

    if-ne v7, v9, :cond_e

    .line 224
    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_your_email_address:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->emailField:Landroid/widget/EditText;

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v10

    iget-object v11, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v10, v11}, Lcom/uservoice/uservoicesdk/Session;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v1, v10}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->restoreEnteredText(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 226
    iput-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->emailField:Landroid/widget/EditText;

    .line 227
    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_email_address_hint:I

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setHint(I)V

    .line 228
    const/16 v9, 0x20

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_2

    .line 229
    :cond_e
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->NAME_FIELD:I

    if-ne v7, v9, :cond_1

    .line 230
    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_your_name:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->nameField:Landroid/widget/EditText;

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v10

    iget-object v11, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v10, v11}, Lcom/uservoice/uservoicesdk/Session;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v1, v10}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->restoreEnteredText(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 232
    iput-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->nameField:Landroid/widget/EditText;

    .line 233
    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_name_hint:I

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setHint(I)V

    .line 234
    const/16 v9, 0x60

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_2

    .line 236
    .end local v1    # "field":Landroid/widget/EditText;
    .end local v6    # "title":Landroid/widget/TextView;
    :cond_f
    iget v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->HEADING:I

    if-ne v7, v9, :cond_1

    .line 237
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 238
    .local v5, "textView":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 239
    .local v2, "hasArticles":Z
    const/4 v3, 0x0

    .line 240
    .local v3, "hasIdeas":Z
    iget-object v9, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->instantAnswers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 241
    .local v4, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    instance-of v10, v4, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v10, :cond_11

    .line 242
    const/4 v2, 0x1

    .line 243
    :cond_11
    instance-of v10, v4, Lcom/uservoice/uservoicesdk/model/Suggestion;

    if-eqz v10, :cond_10

    .line 244
    const/4 v3, 0x1

    goto :goto_4

    .line 246
    .end local v4    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_12
    if-eqz v2, :cond_14

    if-eqz v3, :cond_13

    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_matching_articles_and_ideas:I

    :goto_5
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_13
    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_matching_articles:I

    goto :goto_5

    :cond_14
    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_matching_ideas:I

    goto :goto_5

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x8

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getItemViewType(I)I

    move-result v0

    .line 124
    .local v0, "type":I
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isLoading()Z
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notHelpful()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INSTANT_ANSWERS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-ne v0, v1, :cond_0

    .line 116
    sget-object v0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->DETAILS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    .line 117
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->notifyDataSetChanged()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onButtonTapped()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 272
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v5, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INIT:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-ne v4, v5, :cond_2

    .line 273
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    if-nez v4, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    sget-object v4, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INIT_LOADING:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    iput-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    .line 279
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->notifyDataSetChanged()V

    .line 280
    invoke-static {v3}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->setSearchText(Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 282
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v7, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 283
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v5, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;

    iget-object v6, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v5, p0, v6}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;-><init>(Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;Landroid/content/Context;)V

    invoke-static {v4, v3, v5}, Lcom/uservoice/uservoicesdk/model/Article;->loadInstantAnswers(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    goto :goto_0

    .line 296
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "query":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v5, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INSTANT_ANSWERS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-ne v4, v5, :cond_3

    .line 297
    sget-object v4, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->DETAILS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    iput-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    .line 298
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v5, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->DETAILS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-ne v4, v5, :cond_0

    .line 300
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->nameField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->emailField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->isValidEmail(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 303
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget v5, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_bad_email_format:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 304
    :cond_4
    iget-boolean v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->isPosting:Z

    if-nez v4, :cond_0

    .line 305
    iput-boolean v7, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->isPosting:Z

    .line 306
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v4

    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v5, v2, v0}, Lcom/uservoice/uservoicesdk/Session;->persistIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->doSubmit()V

    goto/16 :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->DETAILS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->emailField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->emailField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->textField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0, v0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getItemViewType(I)I

    move-result v0

    .line 130
    .local v0, "type":I
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->INSTANT_ANSWER:I

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    const-string v3, "show"

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->deflectingType:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/BaseModel;

    invoke-static {v2, v3, v4, v1}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->trackDeflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/model/BaseModel;)V

    .line 132
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p3}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/BaseModel;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->deflectingType:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/uservoice/uservoicesdk/ui/Utils;->showModel(Landroid/support/v4/app/FragmentActivity;Lcom/uservoice/uservoicesdk/model/BaseModel;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected restoreEnteredText(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "previous"    # Landroid/widget/EditText;
    .param p2, "current"    # Landroid/widget/EditText;
    .param p3, "defaultText"    # Ljava/lang/String;

    .prologue
    .line 252
    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p3    # "defaultText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 260
    .end local v0    # "text":Ljava/lang/String;
    :goto_1
    return-void

    .restart local v0    # "text":Ljava/lang/String;
    .restart local p3    # "defaultText":Ljava/lang/String;
    :cond_0
    move-object p3, v0

    .line 254
    goto :goto_0

    .line 257
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1
.end method
