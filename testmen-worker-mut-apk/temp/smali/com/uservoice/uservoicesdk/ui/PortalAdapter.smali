.class public Lcom/uservoice/uservoicesdk/ui/PortalAdapter;
.super Lcom/uservoice/uservoicesdk/ui/SearchAdapter;
.source "PortalAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/SearchAdapter",
        "<",
        "Lcom/uservoice/uservoicesdk/model/BaseModel;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static ARTICLE:I

.field private static CONTACT:I

.field private static FORUM:I

.field private static KB_HEADER:I

.field private static LOADING:I

.field private static POWERED_BY:I

.field public static SCOPE_ALL:I

.field public static SCOPE_ARTICLES:I

.field public static SCOPE_IDEAS:I

.field private static TOPIC:I


# instance fields
.field private articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Article;",
            ">;"
        }
    .end annotation
.end field

.field private configLoaded:Z

.field private final context:Landroid/support/v4/app/FragmentActivity;

.field private inflater:Landroid/view/LayoutInflater;

.field private staticRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_ALL:I

    .line 32
    sput v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_ARTICLES:I

    .line 33
    sput v2, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_IDEAS:I

    .line 35
    sput v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->KB_HEADER:I

    .line 36
    sput v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->FORUM:I

    .line 37
    sput v2, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->TOPIC:I

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->LOADING:I

    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->CONTACT:I

    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->ARTICLE:I

    .line 41
    const/4 v0, 0x6

    sput v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->POWERED_BY:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->configLoaded:Z

    .line 50
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    .line 51
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 53
    new-instance v0, Lcom/uservoice/uservoicesdk/flow/InitManager;

    new-instance v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$1;

    invoke-direct {v1, p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$1;-><init>(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)V

    invoke-direct {v0, p1, v1}, Lcom/uservoice/uservoicesdk/flow/InitManager;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->configLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->loadForum()V

    return-void
.end method

.method static synthetic access$200(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->loadTopics()V

    return-void
.end method

.method static synthetic access$302(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->articles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private computeStaticRows()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    if-nez v1, :cond_2

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    .line 118
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    .line 119
    .local v0, "config":Lcom/uservoice/uservoicesdk/Config;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->shouldShowContactUs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    sget v2, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->CONTACT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->shouldShowForum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    sget v2, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->FORUM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->shouldShowKnowledgeBase()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    sget v2, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->KB_HEADER:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v0    # "config":Lcom/uservoice/uservoicesdk/Config;
    :cond_2
    return-void
.end method

.method private getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Topic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getTopics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private loadForum()V
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    .line 74
    .local v0, "config":Lcom/uservoice/uservoicesdk/Config;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->shouldShowForum()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->shouldShowPostIdea()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v3}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Config;->getForumId()I

    move-result v2

    new-instance v3, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$2;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v3, p0, v4}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$2;-><init>(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/Forum;->loadForum(Landroid/content/Context;ILcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 83
    :cond_1
    return-void
.end method

.method private loadTopics()V
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$3;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, p0, v1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$3;-><init>(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Landroid/content/Context;)V

    .line 95
    .local v0, "articlesCallback":Lcom/uservoice/uservoicesdk/ui/DefaultCallback;, "Lcom/uservoice/uservoicesdk/ui/DefaultCallback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Article;>;>;"
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->getTopicId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v3}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Config;->getTopicId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/uservoice/uservoicesdk/model/Article;->loadPageForTopic(Landroid/content/Context;IILcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 113
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, p0, v3, v0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;-><init>(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Landroid/content/Context;Lcom/uservoice/uservoicesdk/ui/DefaultCallback;)V

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/Topic;->loadTopics(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0
.end method

.method private shouldShowArticles()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->getTopicId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 130
    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->configLoaded:Z

    if-nez v1, :cond_1

    .line 131
    const/4 v0, 0x1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->computeStaticRows()V

    .line 134
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 135
    .local v0, "rows":I
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->shouldShowKnowledgeBase()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->shouldShowArticles()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->articles:Ljava/util/List;

    if-nez v1, :cond_4

    .line 137
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 142
    :cond_3
    :goto_1
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->isWhiteLabel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_4
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->shouldShowArticles()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->articles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->computeStaticRows()V

    .line 173
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->FORUM:I

    if-ne v0, v1, :cond_0

    .line 174
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getForum()Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->shouldShowArticles()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->articles:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->shouldShowArticles()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->articles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 178
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->articles:Ljava/util/List;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 184
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 282
    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->configLoaded:Z

    if-nez v1, :cond_1

    .line 283
    sget v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->LOADING:I

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->computeStaticRows()V

    .line 285
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    .local v0, "type":I
    sget v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->FORUM:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Session;->getForum()Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v1

    if-nez v1, :cond_0

    .line 288
    sget v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->LOADING:I

    goto :goto_0

    .line 291
    .end local v0    # "type":I
    :cond_2
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->shouldShowKnowledgeBase()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 292
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->shouldShowArticles()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->articles:Ljava/util/List;

    if-nez v1, :cond_4

    .line 293
    :cond_3
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    if-nez v1, :cond_6

    .line 294
    sget v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->LOADING:I

    goto :goto_0

    .line 295
    :cond_4
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->shouldShowArticles()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->articles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 296
    sget v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->ARTICLE:I

    goto :goto_0

    .line 297
    :cond_5
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->shouldShowArticles()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 298
    sget v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->TOPIC:I

    goto/16 :goto_0

    .line 301
    :cond_6
    sget v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->POWERED_BY:I

    goto/16 :goto_0
.end method

.method public getScopedSearchResults()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->scope:I

    sget v4, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_ALL:I

    if-ne v3, v4, :cond_1

    .line 151
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->searchResults:Ljava/util/List;

    .line 167
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->scope:I

    sget v4, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_ARTICLES:I

    if-ne v3, v4, :cond_3

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "articles":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->searchResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 155
    .local v2, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    instance-of v4, v2, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v4, :cond_2

    .line 156
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    .end local v0    # "articles":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    .end local v2    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_3
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->scope:I

    sget v4, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_IDEAS:I

    if-ne v3, v4, :cond_6

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "ideas":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->searchResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 162
    .restart local v2    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    instance-of v4, v2, Lcom/uservoice/uservoicesdk/model/Suggestion;

    if-eqz v4, :cond_4

    .line 163
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_5
    move-object v0, v1

    .line 165
    goto :goto_0

    .line 167
    .end local v1    # "ideas":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 215
    move-object v6, p2

    .line 216
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getItemViewType(I)I

    move-result v5

    .line 217
    .local v5, "type":I
    if-nez v6, :cond_0

    .line 218
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->LOADING:I

    if-ne v5, v7, :cond_6

    .line 219
    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/uservoice/uservoicesdk/R$layout;->uv_loading_item:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 234
    :cond_0
    :goto_0
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->FORUM:I

    if-ne v5, v7, :cond_c

    .line 235
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 236
    .local v3, "textView":Landroid/widget/TextView;
    sget v7, Lcom/uservoice/uservoicesdk/R$string;->uv_feedback_forum:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 237
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_text2:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 238
    .local v2, "text2":Landroid/widget/TextView;
    sget v7, Lcom/uservoice/uservoicesdk/R$plurals;->uv_ideas:I

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uservoice/uservoicesdk/Session;->getForum()Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uservoice/uservoicesdk/model/Forum;->getNumberOfOpenSuggestions()I

    move-result v8

    invoke-static {v2, v7, v8}, Lcom/uservoice/uservoicesdk/ui/Utils;->getQuantityString(Landroid/view/View;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .end local v2    # "text2":Landroid/widget/TextView;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_1
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_divider:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, "divider":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 268
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-ne p1, v7, :cond_2

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getItemViewType(I)I

    move-result v7

    sget v8, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->POWERED_BY:I

    if-eq v7, v8, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_12

    :cond_3
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_4
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->FORUM:I

    if-ne v5, v7, :cond_5

    .line 270
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_5
    return-object v6

    .line 220
    .end local v1    # "divider":Landroid/view/View;
    :cond_6
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->FORUM:I

    if-ne v5, v7, :cond_7

    .line 221
    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_item:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 222
    :cond_7
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->KB_HEADER:I

    if-ne v5, v7, :cond_8

    .line 223
    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/uservoice/uservoicesdk/R$layout;->uv_header_item_light:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 224
    :cond_8
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->TOPIC:I

    if-ne v5, v7, :cond_9

    .line 225
    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_item:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    .line 226
    :cond_9
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->CONTACT:I

    if-ne v5, v7, :cond_a

    .line 227
    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_item:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    .line 228
    :cond_a
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->ARTICLE:I

    if-ne v5, v7, :cond_b

    .line 229
    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_item:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    .line 230
    :cond_b
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->POWERED_BY:I

    if-ne v5, v7, :cond_0

    .line 231
    iget-object v7, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/uservoice/uservoicesdk/R$layout;->uv_powered_by_item:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    .line 239
    :cond_c
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->KB_HEADER:I

    if-ne v5, v7, :cond_d

    .line 240
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 241
    .restart local v3    # "textView":Landroid/widget/TextView;
    sget v7, Lcom/uservoice/uservoicesdk/R$string;->uv_knowledge_base:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 242
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_d
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->TOPIC:I

    if-ne v5, v7, :cond_f

    .line 243
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uservoice/uservoicesdk/model/Topic;

    .line 244
    .local v4, "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 245
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/model/Topic;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_text2:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 247
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/model/Topic;->getId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_e

    .line 248
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 250
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    const-string v7, "%d %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/model/Topic;->getNumberOfArticles()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/uservoice/uservoicesdk/R$plurals;->uv_articles:I

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/model/Topic;->getNumberOfArticles()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 253
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    :cond_f
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->CONTACT:I

    if-ne v5, v7, :cond_10

    .line 254
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 255
    .restart local v3    # "textView":Landroid/widget/TextView;
    sget v7, Lcom/uservoice/uservoicesdk/R$string;->uv_contact_us:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 256
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_text2:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 257
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_10
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->ARTICLE:I

    if-ne v5, v7, :cond_11

    .line 258
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 259
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/Article;

    .line 260
    .local v0, "article":Lcom/uservoice/uservoicesdk/model/Article;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 261
    .end local v0    # "article":Lcom/uservoice/uservoicesdk/model/Article;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_11
    sget v7, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->POWERED_BY:I

    if-ne v5, v7, :cond_1

    .line 262
    sget v7, Lcom/uservoice/uservoicesdk/R$id;->uv_version:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 263
    .restart local v3    # "textView":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget v9, Lcom/uservoice/uservoicesdk/R$string;->uv_android_sdk:I

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " v"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/uservoice/uservoicesdk/UserVoice;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 268
    .end local v3    # "textView":Landroid/widget/TextView;
    .restart local v1    # "divider":Landroid/view/View;
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x7

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->configLoaded:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 197
    :goto_0
    return v1

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->computeStaticRows()V

    .line 192
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->staticRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 194
    .local v0, "type":I
    sget v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->KB_HEADER:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->LOADING:I

    if-ne v0, v1, :cond_2

    :cond_1
    move v1, v2

    .line 195
    goto :goto_0

    .line 197
    .end local v0    # "type":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
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
    .line 305
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getItemViewType(I)I

    move-result v0

    .line 306
    .local v0, "type":I
    sget v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->CONTACT:I

    if-ne v0, v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lcom/uservoice/uservoicesdk/activity/ContactActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    sget v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->FORUM:I

    if-ne v0, v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :cond_2
    sget v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->TOPIC:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->ARTICLE:I

    if-ne v0, v1, :cond_0

    .line 311
    :cond_3
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p3}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/BaseModel;

    invoke-static {v2, v1}, Lcom/uservoice/uservoicesdk/ui/Utils;->showModel(Landroid/support/v4/app/FragmentActivity;Lcom/uservoice/uservoicesdk/model/BaseModel;)V

    goto :goto_0
.end method

.method protected searchResultsUpdated()V
    .locals 5

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "articleResults":I
    const/4 v1, 0x0

    .line 204
    .local v1, "ideaResults":I
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->searchResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 205
    .local v2, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    instance-of v4, v2, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v4, :cond_0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_1
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    check-cast v3, Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->searchResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->updateScopedSearch(III)V

    .line 211
    return-void
.end method
