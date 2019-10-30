.class public Lcom/uservoice/uservoicesdk/deflection/Deflection;
.super Ljava/lang/Object;
.source "Deflection.java"


# static fields
.field private static interactionIdentifier:I

.field private static searchText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uservoice/uservoicesdk/deflection/Deflection;->interactionIdentifier:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deflectionParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->getUvts()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "uvts"

    invoke-static {}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->getUvts()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    const-string v1, "channel"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "search_term"

    sget-object v2, Lcom/uservoice/uservoicesdk/deflection/Deflection;->searchText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "interaction_identifier"

    sget v2, Lcom/uservoice/uservoicesdk/deflection/Deflection;->interactionIdentifier:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "subdomain_id"

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getSubdomainId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object v0
.end method

.method private static getCallback()Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/uservoice/uservoicesdk/deflection/Deflection$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uservoice/uservoicesdk/deflection/Deflection$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;)V

    return-object v0
.end method

.method public static setSearchText(Ljava/lang/String;)V
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/uservoice/uservoicesdk/deflection/Deflection;->searchText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    sput-object p0, Lcom/uservoice/uservoicesdk/deflection/Deflection;->searchText:Ljava/lang/String;

    .line 70
    sget v0, Lcom/uservoice/uservoicesdk/deflection/Deflection;->interactionIdentifier:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/uservoice/uservoicesdk/deflection/Deflection;->interactionIdentifier:I

    goto :goto_0
.end method

.method public static trackDeflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/model/BaseModel;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "deflectingType"    # Ljava/lang/String;
    .param p3, "deflector"    # Lcom/uservoice/uservoicesdk/model/BaseModel;

    .prologue
    .line 30
    invoke-static {}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->deflectionParams()Ljava/util/Map;

    move-result-object v4

    .line 31
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "kind"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "deflecting_type"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "deflector_id"

    invoke-virtual {p3}, Lcom/uservoice/uservoicesdk/model/BaseModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "deflector_type"

    instance-of v0, p3, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v0, :cond_0

    const-string v0, "Faq"

    :goto_0
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestTask;

    sget-object v2, Lcom/uservoice/uservoicesdk/rest/RestMethod;->GET:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    const-string v3, "/clients/widgets/omnibox/deflections/upsert.json"

    invoke-static {}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->getCallback()Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/uservoice/uservoicesdk/rest/RestTask;-><init>(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/RestMethod;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/rest/RestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void

    .line 34
    :cond_0
    const-string v0, "Suggestion"

    goto :goto_0
.end method

.method public static trackSearchDeflection(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "deflectingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    invoke-static {}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->deflectionParams()Ljava/util/Map;

    move-result-object v5

    .line 40
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "kind"

    const-string v2, "list"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "deflecting_type"

    move-object/from16 v0, p2

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/4 v8, 0x0

    .line 43
    .local v8, "articleResults":I
    const/4 v14, 0x0

    .line 44
    .local v14, "suggestionResults":I
    const/4 v9, 0x0

    .line 45
    .local v9, "index":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 46
    .local v11, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "results["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 47
    .local v12, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[position]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .local v10, "index":I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[deflector_id]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/uservoice/uservoicesdk/model/BaseModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v2, v11, Lcom/uservoice/uservoicesdk/model/Suggestion;

    if-eqz v2, :cond_1

    .line 50
    add-int/lit8 v14, v14, 0x1

    move-object v13, v11

    .line 51
    check-cast v13, Lcom/uservoice/uservoicesdk/model/Suggestion;

    .line 52
    .local v13, "suggestion":Lcom/uservoice/uservoicesdk/model/Suggestion;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[weight]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getWeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[deflector_type]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Suggestion"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v13    # "suggestion":Lcom/uservoice/uservoicesdk/model/Suggestion;
    :cond_0
    :goto_1
    move v9, v10

    .line 60
    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto/16 :goto_0

    .line 54
    .end local v9    # "index":I
    .restart local v10    # "index":I
    :cond_1
    instance-of v2, v11, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v2, :cond_0

    .line 55
    add-int/lit8 v8, v8, 0x1

    move-object v7, v11

    .line 56
    check-cast v7, Lcom/uservoice/uservoicesdk/model/Article;

    .line 57
    .local v7, "article":Lcom/uservoice/uservoicesdk/model/Article;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[weight]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/uservoice/uservoicesdk/model/Article;->getWeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[deflector_type]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Faq"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    .end local v7    # "article":Lcom/uservoice/uservoicesdk/model/Article;
    .end local v10    # "index":I
    .end local v11    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    .end local v12    # "prefix":Ljava/lang/String;
    .restart local v9    # "index":I
    :cond_2
    const-string v1, "faq_results"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "suggestion_results"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Lcom/uservoice/uservoicesdk/rest/RestTask;

    sget-object v3, Lcom/uservoice/uservoicesdk/rest/RestMethod;->GET:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    const-string v4, "/clients/widgets/omnibox/deflections/list_view.json"

    invoke-static {}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->getCallback()Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/uservoice/uservoicesdk/rest/RestTask;-><init>(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/RestMethod;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/rest/RestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method
