.class public Lcom/uservoice/uservoicesdk/ui/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayArticle(Landroid/webkit/WebView;Lcom/uservoice/uservoicesdk/model/Article;Landroid/content/Context;)V
    .locals 8
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "article"    # Lcom/uservoice/uservoicesdk/model/Article;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 33
    const-string v1, "iframe, img { max-width: 100%; }"

    .line 34
    .local v1, "styles":Ljava/lang/String;
    invoke-static {p2}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const-string v2, "#303030"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "body { background-color: #303030; color: #F6F6F6; } a { color: #0099FF; }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_0
    const-string v2, "<html><head><meta charset=\"utf-8\"><link rel=\"stylesheet\" type=\"text/css\" href=\"http://cdn.uservoice.com/stylesheets/vendor/typeset.css\"/><style>%s</style></head><body class=\"typeset\" style=\"font-family: sans-serif; margin: 1em\"><h3>%s</h3><br>%s</body></html>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Article;->getHtml()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "html":Ljava/lang/String;
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 40
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 42
    const-string v2, "data:text/html;charset=utf-8,%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static displayInstantAnswer(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/BaseModel;)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/BaseModel;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 59
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_title:I

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 60
    .local v8, "title":Landroid/widget/TextView;
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_detail:I

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, "detail":Landroid/widget/TextView;
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_suggestion_details:I

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 62
    .local v7, "suggestionDetails":Landroid/view/View;
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_icon:I

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 63
    .local v3, "image":Landroid/widget/ImageView;
    instance-of v9, p1, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v9, :cond_2

    move-object v0, p1

    .line 64
    check-cast v0, Lcom/uservoice/uservoicesdk/model/Article;

    .line 65
    .local v0, "article":Lcom/uservoice/uservoicesdk/model/Article;
    sget v9, Lcom/uservoice/uservoicesdk/R$drawable;->uv_article:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Article;->getTopicName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 68
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Article;->getTopicName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .end local v0    # "article":Lcom/uservoice/uservoicesdk/model/Article;
    :cond_0
    :goto_1
    return-void

    .line 71
    .restart local v0    # "article":Lcom/uservoice/uservoicesdk/model/Article;
    :cond_1
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 74
    .end local v0    # "article":Lcom/uservoice/uservoicesdk/model/Article;
    :cond_2
    instance-of v9, p1, Lcom/uservoice/uservoicesdk/model/Suggestion;

    if-eqz v9, :cond_0

    move-object v6, p1

    .line 75
    check-cast v6, Lcom/uservoice/uservoicesdk/model/Suggestion;

    .line 76
    .local v6, "suggestion":Lcom/uservoice/uservoicesdk/model/Suggestion;
    sget v9, Lcom/uservoice/uservoicesdk/R$drawable;->uv_idea:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    invoke-virtual {v6}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {v6}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getForumName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v6}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatus()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 81
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_suggestion_status_color:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 82
    .local v5, "statusColor":Landroid/view/View;
    sget v9, Lcom/uservoice/uservoicesdk/R$id;->uv_suggestion_status:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 83
    .local v4, "status":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatusColor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, "color":I
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v6}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 89
    .end local v1    # "color":I
    .end local v4    # "status":Landroid/widget/TextView;
    .end local v5    # "statusColor":Landroid/view/View;
    :cond_3
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getQuantityString(Landroid/view/View;II)Ljava/lang/String;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .param p2, "count"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "%,d %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 46
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 47
    .local v1, "tv":Landroid/util/TypedValue;
    const/4 v3, 0x3

    new-array v0, v3, [F

    .line 48
    .local v0, "hsv":[F
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010036

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 50
    const/4 v3, 0x2

    aget v3, v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static showModel(Landroid/support/v4/app/FragmentActivity;Lcom/uservoice/uservoicesdk/model/BaseModel;)V
    .locals 1
    .param p0, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/BaseModel;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uservoice/uservoicesdk/ui/Utils;->showModel(Landroid/support/v4/app/FragmentActivity;Lcom/uservoice/uservoicesdk/model/BaseModel;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static showModel(Landroid/support/v4/app/FragmentActivity;Lcom/uservoice/uservoicesdk/model/BaseModel;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/BaseModel;
    .param p2, "deflectingType"    # Ljava/lang/String;

    .prologue
    .line 100
    instance-of v2, p1, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v2, :cond_1

    .line 101
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    check-cast p1, Lcom/uservoice/uservoicesdk/model/Article;

    .end local p1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    invoke-direct {v0, p1, p2}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;-><init>(Lcom/uservoice/uservoicesdk/model/Article;Ljava/lang/String;)V

    .line 102
    .local v0, "fragment":Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "ArticleDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 111
    .end local v0    # "fragment":Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local p1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_1
    instance-of v2, p1, Lcom/uservoice/uservoicesdk/model/Suggestion;

    if-eqz v2, :cond_2

    .line 104
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    check-cast p1, Lcom/uservoice/uservoicesdk/model/Suggestion;

    .end local p1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    invoke-direct {v0, p1, p2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;-><init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Ljava/lang/String;)V

    .line 105
    .local v0, "fragment":Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "SuggestionDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0    # "fragment":Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;
    .restart local p1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_2
    instance-of v2, p1, Lcom/uservoice/uservoicesdk/model/Topic;

    if-eqz v2, :cond_0

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "topic"

    check-cast p1, Lcom/uservoice/uservoicesdk/model/Topic;

    .end local p1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
