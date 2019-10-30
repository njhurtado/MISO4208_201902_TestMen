.class public Lcom/uservoice/uservoicesdk/model/Article;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "Article.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Article;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private html:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private topicName:Ljava/lang/String;

.field private weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/uservoice/uservoicesdk/model/Article$4;

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/model/Article$4;-><init>()V

    sput-object v0, Lcom/uservoice/uservoicesdk/model/Article;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->id:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->title:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->html:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->topicName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->weight:I

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/uservoice/uservoicesdk/model/Article$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/uservoice/uservoicesdk/model/Article$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/uservoice/uservoicesdk/model/Article;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static loadInstantAnswers(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;>;)",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "per_page"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "forum_id"

    invoke-static {p0}, Lcom/uservoice/uservoicesdk/model/Article;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Config;->getForumId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "query"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Lcom/uservoice/uservoicesdk/model/Article;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->getTopicId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 61
    const-string v1, "topic_id"

    invoke-static {p0}, Lcom/uservoice/uservoicesdk/model/Article;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Config;->getTopicId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    const-string v1, "/instant_answers/search.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Article;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Article$3;

    invoke-direct {v2, p2, p2}, Lcom/uservoice/uservoicesdk/model/Article$3;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Article;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v1

    return-object v1
.end method

.method public static loadPage(Landroid/content/Context;ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Article;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Article;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sort"

    const-string v2, "ordered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "filter"

    const-string v2, "published"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "per_page"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "/articles.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Article;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Article$1;

    invoke-direct {v2, p2, p2}, Lcom/uservoice/uservoicesdk/model/Article$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Article;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 39
    return-void
.end method

.method public static loadPageForTopic(Landroid/content/Context;IILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topicId"    # I
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Article;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Article;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sort"

    const-string v2, "ordered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "filter"

    const-string v2, "published"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "per_page"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "/topics/%d/articles.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Article;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Article$2;

    invoke-direct {v2, p3, p3}, Lcom/uservoice/uservoicesdk/model/Article$2;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Article;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->weight:I

    return v0
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
    .line 73
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 74
    const-string v1, "question"

    invoke-virtual {p0, p1, v1}, Lcom/uservoice/uservoicesdk/model/Article;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Article;->title:Ljava/lang/String;

    .line 75
    const-string v1, "answer_html"

    invoke-virtual {p0, p1, v1}, Lcom/uservoice/uservoicesdk/model/Article;->getHtml(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Article;->html:Ljava/lang/String;

    .line 76
    const-string v1, "normalized_weight"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "normalized_weight"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/uservoice/uservoicesdk/model/Article;->weight:I

    .line 79
    :cond_0
    const-string v1, "topic"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    const-string v1, "topic"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    .local v0, "topic":Lorg/json/JSONObject;
    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/Article;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/model/Article;->topicName:Ljava/lang/String;

    .line 83
    .end local v0    # "topic":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 110
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->html:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->topicName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Article;->weight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void
.end method
