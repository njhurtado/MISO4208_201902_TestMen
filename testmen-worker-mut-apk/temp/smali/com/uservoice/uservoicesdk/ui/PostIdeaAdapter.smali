.class public Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;
.super Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;
.source "PostIdeaAdapter.java"


# static fields
.field private static CATEGORY:I

.field private static DESCRIPTION:I

.field private static HELP:I

.field private static TEXT_HEADING:I


# instance fields
.field private categorySelect:Landroid/widget/Spinner;

.field private descriptionField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x8

    sput v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->DESCRIPTION:I

    .line 30
    const/16 v0, 0x9

    sput v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->CATEGORY:I

    .line 31
    const/16 v0, 0xa

    sput v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->HELP:I

    .line 32
    const/16 v0, 0xb

    sput v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->TEXT_HEADING:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 39
    sget v0, Lcom/uservoice/uservoicesdk/R$string;->uv_post_idea_continue_button:I

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->continueButtonMessage:I

    .line 40
    const-string v0, "Suggestion"

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->deflectingType:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->categorySelect:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->descriptionField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected doSubmit()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->emailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->nameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;

    invoke-direct {v3, p0}, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;-><init>(Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;)V

    invoke-static {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->signIn(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V

    .line 142
    return-void
.end method

.method protected getDetailRows()Ljava/util/List;
    .locals 2
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
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v1, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->DESCRIPTION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Session;->getForum()Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/Forum;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 53
    sget v1, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->CATEGORY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->SPACE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->EMAIL_FIELD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget v1, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->NAME_FIELD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
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
    .line 62
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getRows()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    sget v2, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->TEXT_HEADING:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->DETAILS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-ne v1, v2, :cond_0

    .line 65
    sget v1, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->HELP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-object v0
.end method

.method protected getSubmitString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_submit_idea:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 72
    move-object v4, p2

    .line 73
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->getItemViewType(I)I

    move-result v3

    .line 74
    .local v3, "type":I
    if-nez v4, :cond_0

    .line 75
    sget v5, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->DESCRIPTION:I

    if-ne v3, v5, :cond_2

    .line 76
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_field_item:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 77
    sget v5, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, "title":Landroid/widget/TextView;
    sget v5, Lcom/uservoice/uservoicesdk/R$string;->uv_idea_description_heading:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 79
    sget v5, Lcom/uservoice/uservoicesdk/R$id;->uv_text_field:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 80
    .local v0, "field":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->descriptionField:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {p0, v5, v0, v6}, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->restoreEnteredText(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 81
    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->descriptionField:Landroid/widget/EditText;

    .line 82
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->descriptionField:Landroid/widget/EditText;

    const v6, 0x20001

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 83
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->descriptionField:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setMinLines(I)V

    .line 84
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->descriptionField:Landroid/widget/EditText;

    sget v6, Lcom/uservoice/uservoicesdk/R$string;->uv_idea_description_hint:I

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 102
    .end local v0    # "field":Landroid/widget/EditText;
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_0
    sget v5, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->DESCRIPTION:I

    if-eq v3, v5, :cond_1

    sget v5, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->CATEGORY:I

    if-eq v3, v5, :cond_1

    sget v5, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->HELP:I

    if-eq v3, v5, :cond_1

    sget v5, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->TEXT_HEADING:I

    if-ne v3, v5, :cond_6

    .line 112
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    return-object v4

    .line 85
    .restart local v4    # "view":Landroid/view/View;
    :cond_2
    sget v5, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->CATEGORY:I

    if-ne v3, v5, :cond_3

    .line 86
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/uservoice/uservoicesdk/R$layout;->uv_select_field_item:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 87
    sget v5, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .restart local v2    # "title":Landroid/widget/TextView;
    sget v5, Lcom/uservoice/uservoicesdk/R$id;->uv_select_field:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->categorySelect:Landroid/widget/Spinner;

    .line 89
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->categorySelect:Landroid/widget/Spinner;

    new-instance v6, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;

    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uservoice/uservoicesdk/Session;->getForum()Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uservoice/uservoicesdk/model/Forum;->getCategories()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    sget v5, Lcom/uservoice/uservoicesdk/R$string;->uv_category:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 91
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_3
    sget v5, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->HELP:I

    if-ne v3, v5, :cond_4

    .line 92
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/uservoice/uservoicesdk/R$layout;->uv_idea_help_item:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 93
    :cond_4
    sget v5, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->TEXT_HEADING:I

    if-ne v3, v5, :cond_5

    .line 94
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/uservoice/uservoicesdk/R$layout;->uv_header_item:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 95
    sget v5, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "textView":Landroid/widget/TextView;
    sget v5, Lcom/uservoice/uservoicesdk/R$string;->uv_idea_text_heading:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 98
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 104
    :cond_6
    iget v5, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->TEXT:I

    if-ne v3, v5, :cond_7

    .line 105
    sget v5, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 106
    .local v1, "textView":Landroid/widget/EditText;
    sget v5, Lcom/uservoice/uservoicesdk/R$string;->uv_idea_text_hint:I

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 107
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setMinLines(I)V

    .line 108
    new-array v5, v9, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0x8c

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1

    .line 110
    .end local v1    # "textView":Landroid/widget/EditText;
    :cond_7
    invoke-super {p0, p1, v4, p3}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
