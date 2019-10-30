.class public Lcom/uservoice/uservoicesdk/model/Forum;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "Forum.java"


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private numberOfOpenSuggestions:I

.field private numberOfVotesAllowed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method

.method public static loadForum(Landroid/content/Context;ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forumId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Forum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/Forum;>;"
    const-string v0, "/forums/%d.json"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/model/Forum;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/uservoice/uservoicesdk/model/Forum$1;

    invoke-direct {v1, p2, p2}, Lcom/uservoice/uservoicesdk/model/Forum$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/Forum;->doGet(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 27
    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Forum;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Forum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfOpenSuggestions()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Forum;->numberOfOpenSuggestions:I

    return v0
.end method

.method public getNumberOfVotesAllowed()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Forum;->numberOfVotesAllowed:I

    return v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 32
    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lcom/uservoice/uservoicesdk/model/Forum;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Forum;->name:Ljava/lang/String;

    .line 33
    const-string v1, "topics"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    .local v0, "topic":Lorg/json/JSONObject;
    const-string v1, "open_suggestions_count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/uservoice/uservoicesdk/model/Forum;->numberOfOpenSuggestions:I

    .line 35
    const-string v1, "votes_allowed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/uservoice/uservoicesdk/model/Forum;->numberOfVotesAllowed:I

    .line 36
    const-string v1, "categories"

    const-class v2, Lcom/uservoice/uservoicesdk/model/Category;

    invoke-static {v0, v1, v2}, Lcom/uservoice/uservoicesdk/model/Forum;->deserializeList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Forum;->categories:Ljava/util/List;

    .line 37
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/model/Forum;->categories:Ljava/util/List;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Forum;->categories:Ljava/util/List;

    .line 39
    :cond_0
    return-void
.end method
