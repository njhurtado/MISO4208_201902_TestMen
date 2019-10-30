.class public Lcom/uservoice/uservoicesdk/model/Suggestion;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "Suggestion.java"


# instance fields
.field private adminResponseAvatarUrl:Ljava/lang/String;

.field private adminResponseCreatedAt:Ljava/util/Date;

.field private adminResponseText:Ljava/lang/String;

.field private adminResponseUserName:Ljava/lang/String;

.field private category:Lcom/uservoice/uservoicesdk/model/Category;

.field private createdAt:Ljava/util/Date;

.field private creatorName:Ljava/lang/String;

.field private forumId:I

.field private forumName:Ljava/lang/String;

.field private numberOfComments:I

.field private numberOfSubscribers:I

.field private rank:I

.field private status:Ljava/lang/String;

.field private statusColor:Ljava/lang/String;

.field private subscribed:Z

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method

.method public static createSuggestion(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Forum;Lcom/uservoice/uservoicesdk/model/Category;Ljava/lang/String;Ljava/lang/String;ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forum"    # Lcom/uservoice/uservoicesdk/model/Forum;
    .param p2, "category"    # Lcom/uservoice/uservoicesdk/model/Category;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "numberOfVotes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/model/Forum;",
            "Lcom/uservoice/uservoicesdk/model/Category;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p6, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/Suggestion;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "subscribe"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "suggestion[title]"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "suggestion[text]"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    if-eqz p2, :cond_0

    .line 70
    const-string v1, "suggestion[category_id]"

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Category;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    const-string v1, "/forums/%d/suggestions.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Forum;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Suggestion$3;

    invoke-direct {v2, p6, p6}, Lcom/uservoice/uservoicesdk/model/Suggestion$3;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 77
    return-void
.end method

.method public static loadSuggestions(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Forum;ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forum"    # Lcom/uservoice/uservoicesdk/model/Forum;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/model/Forum;",
            "I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Suggestion;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "per_page"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "filter"

    const-string v2, "public"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "sort"

    invoke-static {}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getSuggestionSort()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "/forums/%d/suggestions.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Forum;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Suggestion$1;

    invoke-direct {v2, p3, p3}, Lcom/uservoice/uservoicesdk/model/Suggestion$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 51
    return-void
.end method

.method public static searchSuggestions(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Forum;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forum"    # Lcom/uservoice/uservoicesdk/model/Forum;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/model/Forum;",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;>;)",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Suggestion;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "query"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "/forums/%d/suggestions/search.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Forum;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Suggestion$2;

    invoke-direct {v2, p3, p3}, Lcom/uservoice/uservoicesdk/model/Suggestion$2;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public commentPosted(Lcom/uservoice/uservoicesdk/model/Comment;)V
    .locals 1
    .param p1, "comment"    # Lcom/uservoice/uservoicesdk/model/Comment;

    .prologue
    .line 206
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->numberOfComments:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->numberOfComments:I

    .line 207
    return-void
.end method

.method public getAdminResponseAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->adminResponseAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminResponseCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->adminResponseCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getAdminResponseText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->adminResponseText:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminResponseUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->adminResponseUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Lcom/uservoice/uservoicesdk/model/Category;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->category:Lcom/uservoice/uservoicesdk/model/Category;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getForumId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->forumId:I

    return v0
.end method

.method public getForumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->forumName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfComments()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->numberOfComments:I

    return v0
.end method

.method public getNumberOfSubscribers()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->numberOfSubscribers:I

    return v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->rank:I

    return v0
.end method

.method public getRankString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    iget v1, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->rank:I

    rem-int/lit8 v1, v1, 0x64

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->rank:I

    rem-int/lit8 v1, v1, 0x64

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 220
    const-string v0, "th"

    .line 236
    .local v0, "suffix":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->rank:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    .end local v0    # "suffix":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->rank:I

    rem-int/lit8 v1, v1, 0xa

    packed-switch v1, :pswitch_data_0

    .line 233
    const-string v0, "th"

    .restart local v0    # "suffix":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0    # "suffix":Ljava/lang/String;
    :pswitch_0
    const-string v0, "st"

    .line 225
    .restart local v0    # "suffix":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "suffix":Ljava/lang/String;
    :pswitch_1
    const-string v0, "nd"

    .line 228
    .restart local v0    # "suffix":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "suffix":Ljava/lang/String;
    :pswitch_2
    const-string v0, "rd"

    .line 231
    .restart local v0    # "suffix":Ljava/lang/String;
    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->statusColor:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->weight:I

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->subscribed:Z

    return v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 108
    const-string v3, "title"

    invoke-virtual {p0, p1, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->title:Ljava/lang/String;

    .line 109
    const-string v3, "formatted_text"

    invoke-virtual {p0, p1, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->text:Ljava/lang/String;

    .line 110
    const-string v3, "created_at"

    invoke-virtual {p0, p1, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->createdAt:Ljava/util/Date;

    .line 111
    const-string v3, "topic"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "forum"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->forumId:I

    .line 112
    const-string v3, "topic"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "forum"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {p0, v3, v4}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->forumName:Ljava/lang/String;

    .line 113
    const-string v3, "subscribed"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "subscribed"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->subscribed:Z

    .line 114
    const-string v3, "category"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    const-string v3, "category"

    const-class v4, Lcom/uservoice/uservoicesdk/model/Category;

    invoke-static {p1, v3, v4}, Lcom/uservoice/uservoicesdk/model/Suggestion;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/uservoice/uservoicesdk/model/Category;

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->category:Lcom/uservoice/uservoicesdk/model/Category;

    .line 116
    :cond_0
    const-string v3, "comments_count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->numberOfComments:I

    .line 117
    const-string v3, "subscriber_count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->numberOfSubscribers:I

    .line 118
    const-string v3, "creator"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    const-string v3, "creator"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {p0, v3, v4}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->creatorName:Ljava/lang/String;

    .line 120
    :cond_1
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 122
    .local v2, "statusObject":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {p0, v2, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->status:Ljava/lang/String;

    .line 123
    const-string v3, "hex_color"

    invoke-virtual {p0, v2, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->statusColor:Ljava/lang/String;

    .line 125
    .end local v2    # "statusObject":Lorg/json/JSONObject;
    :cond_2
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 126
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    .local v0, "response":Lorg/json/JSONObject;
    const-string v3, "formatted_text"

    invoke-virtual {p0, v0, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->adminResponseText:Ljava/lang/String;

    .line 128
    const-string v3, "created_at"

    invoke-virtual {p0, v0, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->adminResponseCreatedAt:Ljava/util/Date;

    .line 129
    const-string v3, "creator"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 130
    .local v1, "responseUser":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {p0, v1, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->adminResponseUserName:Ljava/lang/String;

    .line 131
    const-string v3, "avatar_url"

    invoke-virtual {p0, v1, v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->adminResponseAvatarUrl:Ljava/lang/String;

    .line 133
    .end local v0    # "response":Lorg/json/JSONObject;
    .end local v1    # "responseUser":Lorg/json/JSONObject;
    :cond_3
    const-string v3, "normalized_weight"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    const-string v3, "normalized_weight"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->weight:I

    .line 136
    :cond_4
    const-string v3, "rank"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 137
    const-string v3, "rank"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->rank:I

    .line 139
    :cond_5
    return-void

    .line 113
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public subscribe(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/Suggestion;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "subscribe"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "/forums/%d/suggestions/%d/watch.json"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->forumId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Suggestion$4;

    invoke-direct {v2, p0, p2, p1, p2}, Lcom/uservoice/uservoicesdk/model/Suggestion$4;-><init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Lcom/uservoice/uservoicesdk/rest/Callback;Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p1, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 91
    return-void
.end method

.method public unsubscribe(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/Suggestion;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "subscribe"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "/forums/%d/suggestions/%d/watch.json"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->forumId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/uservoice/uservoicesdk/model/Suggestion;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Suggestion$5;

    invoke-direct {v2, p0, p2, p2}, Lcom/uservoice/uservoicesdk/model/Suggestion$5;-><init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p1, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 103
    return-void
.end method
