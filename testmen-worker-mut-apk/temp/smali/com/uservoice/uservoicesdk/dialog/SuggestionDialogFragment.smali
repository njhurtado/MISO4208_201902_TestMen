.class public Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;
.super Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;
.source "SuggestionDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private adapter:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private deflectingType:Ljava/lang/String;

.field private headerView:Landroid/view/View;

.field private suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Ljava/lang/String;)V
    .locals 0
    .param p1, "suggestion"    # Lcom/uservoice/uservoicesdk/model/Suggestion;
    .param p2, "deflectingType"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    .line 44
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->deflectingType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->deflectingType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    return-object v0
.end method

.method private displaySuggestion(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Suggestion;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "suggestion"    # Lcom/uservoice/uservoicesdk/model/Suggestion;

    .prologue
    .line 162
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_status:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 163
    .local v5, "status":Landroid/widget/TextView;
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_response_status:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, "responseStatus":Landroid/widget/TextView;
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_response_divider:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 165
    .local v3, "responseDivider":Landroid/view/View;
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_title:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 167
    .local v6, "title":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->isSubscribed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_subscribe_checkbox:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    :cond_0
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatus()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 172
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    const v2, -0xbbbbbc

    .line 174
    .local v2, "defaultColor":I
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    .end local v2    # "defaultColor":I
    :goto_0
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_creator:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_posted_by_format:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getCreatorName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getCreatedAt()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getAdminResponseText()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 190
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_admin_response:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_1
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_comment_count:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget v8, Lcom/uservoice/uservoicesdk/R$plurals;->uv_comments:I

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getNumberOfComments()I

    move-result v9

    invoke-static {p1, v8, v9}, Lcom/uservoice/uservoicesdk/ui/Utils;->getQuantityString(Landroid/view/View;II)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->shouldDisplaySuggestionsByRank()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_subscriber_count:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_ranked:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getRankString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_2
    return-void

    .line 177
    :cond_1
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatusColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, "color":I
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 179
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    sget v7, Lcom/uservoice/uservoicesdk/R$string;->uv_admin_response_format:I

    invoke-virtual {p0, v7}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 192
    .end local v1    # "color":I
    :cond_2
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_admin_response:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 193
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_admin_name:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getAdminResponseUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_response_date:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getAdminResponseCreatedAt()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_response_text:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getAdminResponseText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_admin_avatar:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 197
    .local v0, "avatar":Landroid/widget/ImageView;
    invoke-static {}, Lcom/uservoice/uservoicesdk/image/ImageCache;->getInstance()Lcom/uservoice/uservoicesdk/image/ImageCache;

    move-result-object v7

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getAdminResponseAvatarUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/uservoice/uservoicesdk/image/ImageCache;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 204
    .end local v0    # "avatar":Landroid/widget/ImageView;
    :cond_3
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_subscriber_count:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/uservoice/uservoicesdk/R$plurals;->uv_number_of_subscribers_format:I

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getNumberOfSubscribers()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lcom/uservoice/uservoicesdk/R$plurals;->uv_subscribers:I

    .line 205
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getNumberOfSubscribers()I

    move-result v12

    invoke-static {p1, v11, v12}, Lcom/uservoice/uservoicesdk/ui/Utils;->getQuantityString(Landroid/view/View;II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 204
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private getListAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$3;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/uservoice/uservoicesdk/R$layout;->uv_comment_item:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$3;-><init>(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public commentPosted(Lcom/uservoice/uservoicesdk/model/Comment;)V
    .locals 2
    .param p1, "comment"    # Lcom/uservoice/uservoicesdk/model/Comment;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->adapter:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->add(ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/model/Suggestion;->commentPosted(Lcom/uservoice/uservoicesdk/model/Comment;)V

    .line 158
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-direct {p0, v0, v1}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->displaySuggestion(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Suggestion;)V

    .line 159
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getTheme()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->setStyle(II)V

    .line 52
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/uservoice/uservoicesdk/R$layout;->uv_idea_dialog:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->view:Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/uservoice/uservoicesdk/R$layout;->uv_idea_dialog_header:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->headerView:Landroid/view/View;

    .line 57
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->headerView:Landroid/view/View;

    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_subscribe:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->headerView:Landroid/view/View;

    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_post_comment:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$2;-><init>(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->view:Landroid/view/View;

    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 93
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 94
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-direct {p0, v2, v3}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->displaySuggestion(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Suggestion;)V

    .line 95
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getListAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->adapter:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    .line 96
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->adapter:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v2, Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->adapter:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    invoke-direct {v2, v3}, Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;-><init>(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 99
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 100
    sget v2, Lcom/uservoice/uservoicesdk/R$string;->uv_close:I

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;I)V

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public suggestionSubscriptionUpdated(Lcom/uservoice/uservoicesdk/model/Suggestion;)V
    .locals 4
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/Suggestion;

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->headerView:Landroid/view/View;

    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_subscribe_checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 109
    .local v0, "checkbox":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/Suggestion;->isSubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->context:Landroid/content/Context;

    sget v2, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_subscribe_success:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-direct {p0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->displaySuggestion(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Suggestion;)V

    .line 117
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-virtual {v1, p1}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->suggestionUpdated(Lcom/uservoice/uservoicesdk/model/Suggestion;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->context:Landroid/content/Context;

    sget v2, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_unsubscribe:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
