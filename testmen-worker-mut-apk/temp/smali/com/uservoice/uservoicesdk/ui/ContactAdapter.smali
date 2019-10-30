.class public Lcom/uservoice/uservoicesdk/ui/ContactAdapter;
.super Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;
.source "ContactAdapter.java"


# instance fields
.field private CUSTOM_PREDEFINED_FIELD:I

.field private CUSTOM_TEXT_FIELD:I

.field private customFieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 29
    const/16 v0, 0x8

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_TEXT_FIELD:I

    .line 30
    const/16 v0, 0x9

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_PREDEFINED_FIELD:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->getCustomFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->customFieldValues:Ljava/util/Map;

    .line 37
    sget v0, Lcom/uservoice/uservoicesdk/R$string;->uv_contact_continue_button:I

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->continueButtonMessage:I

    .line 38
    const-string v0, "Ticket"

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->deflectingType:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->customFieldValues:Ljava/util/Map;

    return-object v0
.end method

.method private validateCustomFields()Z
    .locals 5

    .prologue
    .line 129
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getCustomFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/CustomField;

    .line 130
    .local v0, "field":Lcom/uservoice/uservoicesdk/model/CustomField;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->customFieldValues:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 133
    :cond_1
    const/4 v2, 0x0

    .line 136
    .end local v0    # "field":Lcom/uservoice/uservoicesdk/model/CustomField;
    .end local v1    # "string":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected doSubmit()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->validateCustomFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->textField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->emailField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->nameField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->customFieldValues:Ljava/util/Map;

    new-instance v5, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;

    iget-object v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v5, p0, v6}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;-><init>(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;Landroid/content/Context;)V

    invoke-static/range {v0 .. v5}, Lcom/uservoice/uservoicesdk/model/Ticket;->createTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-boolean v2, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->isPosting:Z

    .line 158
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_custom_fields_validation:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected getDetailRows()Ljava/util/List;
    .locals 5
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
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    iget v4, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->EMAIL_FIELD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->NAME_FIELD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->SPACE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getCustomFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/CustomField;

    .line 51
    .local v0, "customField":Lcom/uservoice/uservoicesdk/model/CustomField;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->isPredefined()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_PREDEFINED_FIELD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_0
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_TEXT_FIELD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v0    # "customField":Lcom/uservoice/uservoicesdk/model/CustomField;
    :cond_1
    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->getItemViewType(I)I

    move-result v2

    .line 62
    .local v2, "type":I
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_PREDEFINED_FIELD:I

    if-eq v2, v3, :cond_0

    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_TEXT_FIELD:I

    if-ne v2, v3, :cond_3

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->getRows()Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_PREDEFINED_FIELD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_PREDEFINED_FIELD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    iget v4, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_TEXT_FIELD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_TEXT_FIELD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 65
    .local v0, "offset":I
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getCustomFields()Ljava/util/List;

    move-result-object v3

    sub-int v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 67
    .end local v0    # "offset":I
    .end local v1    # "rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2
    return-object v3

    .line 64
    .restart local v1    # "rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    .line 67
    .end local v1    # "rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2
.end method

.method protected getSubmitString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_send_message:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 73
    move-object v5, p2

    .line 74
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->getItemViewType(I)I

    move-result v3

    .line 75
    .local v3, "type":I
    if-nez v5, :cond_0

    .line 76
    iget v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_TEXT_FIELD:I

    if-ne v3, v6, :cond_2

    .line 77
    iget-object v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_field_item:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 85
    :cond_0
    :goto_0
    iget v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_TEXT_FIELD:I

    if-ne v3, v6, :cond_4

    .line 86
    sget v6, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 87
    .local v2, "title":Landroid/widget/TextView;
    sget v6, Lcom/uservoice/uservoicesdk/R$id;->uv_text_field:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 88
    .local v1, "field":Landroid/widget/EditText;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/CustomField;

    .line 89
    .local v0, "customField":Lcom/uservoice/uservoicesdk/model/CustomField;
    iget-object v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->customFieldValues:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget v6, Lcom/uservoice/uservoicesdk/R$string;->uv_value:I

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 92
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 93
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v6, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;-><init>(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;Lcom/uservoice/uservoicesdk/model/CustomField;Landroid/widget/EditText;)V

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .end local v1    # "field":Landroid/widget/EditText;
    :cond_1
    :goto_1
    move-object v6, v5

    .line 125
    .end local v0    # "customField":Lcom/uservoice/uservoicesdk/model/CustomField;
    .end local v2    # "title":Landroid/widget/TextView;
    .end local v4    # "value":Ljava/lang/String;
    :goto_2
    return-object v6

    .line 78
    :cond_2
    iget v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_PREDEFINED_FIELD:I

    if-ne v3, v6, :cond_3

    .line 79
    iget-object v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/uservoice/uservoicesdk/R$layout;->uv_select_field_item:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 81
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    .line 102
    :cond_4
    iget v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->CUSTOM_PREDEFINED_FIELD:I

    if-ne v3, v6, :cond_5

    .line 103
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/CustomField;

    .line 104
    .restart local v0    # "customField":Lcom/uservoice/uservoicesdk/model/CustomField;
    iget-object v6, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->customFieldValues:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .restart local v4    # "value":Ljava/lang/String;
    sget v6, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .restart local v2    # "title":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget v6, Lcom/uservoice/uservoicesdk/R$id;->uv_select_field:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 108
    .local v1, "field":Landroid/widget/Spinner;
    new-instance v6, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$2;

    invoke-direct {v6, p0, v0}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$2;-><init>(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;Lcom/uservoice/uservoicesdk/model/CustomField;)V

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    new-instance v6, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;

    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getPredefinedValues()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 119
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getPredefinedValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getPredefinedValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 123
    .end local v0    # "customField":Lcom/uservoice/uservoicesdk/model/CustomField;
    .end local v1    # "field":Landroid/widget/Spinner;
    .end local v2    # "title":Landroid/widget/TextView;
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    invoke-super {p0, p1, v5, p3}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
