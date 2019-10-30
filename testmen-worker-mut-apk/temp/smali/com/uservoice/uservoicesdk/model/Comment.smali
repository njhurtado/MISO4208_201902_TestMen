.class public Lcom/uservoice/uservoicesdk/model/Comment;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "Comment.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private text:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method

.method public static createComment(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Suggestion;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "suggestion"    # Lcom/uservoice/uservoicesdk/model/Suggestion;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/Comment;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "comment[text]"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "/forums/%d/suggestions/%d/comments.json"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getForumId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Comment;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Comment$2;

    invoke-direct {v2, p3, p0, p1, p3}, Lcom/uservoice/uservoicesdk/model/Comment$2;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Suggestion;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Comment;->doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 44
    return-void
.end method

.method public static loadComments(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Suggestion;ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "suggestion"    # Lcom/uservoice/uservoicesdk/model/Suggestion;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            "I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Comment;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Comment;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "/forums/%d/suggestions/%d/comments.json"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getForumId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Comment;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Comment$1;

    invoke-direct {v2, p3, p3}, Lcom/uservoice/uservoicesdk/model/Comment$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Comment;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 32
    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Comment;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Comment;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Comment;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 49
    const-string v1, "formatted_text"

    invoke-virtual {p0, p1, v1}, Lcom/uservoice/uservoicesdk/model/Comment;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Comment;->text:Ljava/lang/String;

    .line 50
    const-string v1, "creator"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    .local v0, "user":Lorg/json/JSONObject;
    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/Comment;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Comment;->userName:Ljava/lang/String;

    .line 52
    const-string v1, "avatar_url"

    invoke-virtual {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/Comment;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Comment;->avatarUrl:Ljava/lang/String;

    .line 53
    const-string v1, "created_at"

    invoke-virtual {p0, p1, v1}, Lcom/uservoice/uservoicesdk/model/Comment;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Comment;->createdAt:Ljava/util/Date;

    .line 54
    return-void
.end method
