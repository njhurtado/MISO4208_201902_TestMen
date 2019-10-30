.class public Lcom/uservoice/uservoicesdk/model/Topic;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "Topic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Topic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected name:Ljava/lang/String;

.field private numberOfArticles:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/uservoice/uservoicesdk/model/Topic$3;

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/model/Topic$3;-><init>()V

    sput-object v0, Lcom/uservoice/uservoicesdk/model/Topic;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 104
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->id:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->name:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->numberOfArticles:I

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/uservoice/uservoicesdk/model/Topic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/uservoice/uservoicesdk/model/Topic$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/uservoice/uservoicesdk/model/Topic;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static allArticlesTopic(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/model/Topic;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/uservoice/uservoicesdk/model/Topic;

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/model/Topic;-><init>()V

    .line 29
    .local v0, "allArticles":Lcom/uservoice/uservoicesdk/model/Topic;
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_all_articles:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uservoice/uservoicesdk/model/Topic;->name:Ljava/lang/String;

    .line 30
    const/4 v1, -0x1

    iput v1, v0, Lcom/uservoice/uservoicesdk/model/Topic;->id:I

    .line 31
    return-object v0
.end method

.method public static loadTopic(Landroid/content/Context;ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topicId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Topic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/Topic;>;"
    const-string v0, "/topics/%d.json"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/model/Topic;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/uservoice/uservoicesdk/model/Topic$2;

    invoke-direct {v1, p2, p2}, Lcom/uservoice/uservoicesdk/model/Topic$2;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/Topic;->doGet(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 58
    return-void
.end method

.method public static loadTopics(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Topic;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Topic;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "per_page"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "/topics.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Topic;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/Topic$1;

    invoke-direct {v2, p1, p1}, Lcom/uservoice/uservoicesdk/model/Topic$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/Topic;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfArticles()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->numberOfArticles:I

    return v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 63
    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/Topic;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->name:Ljava/lang/String;

    .line 64
    const-string v0, "article_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->numberOfArticles:I

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/Topic;->numberOfArticles:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void
.end method
