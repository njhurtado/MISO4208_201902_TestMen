.class public Lcom/uservoice/uservoicesdk/model/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# instance fields
.field protected id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static varargs apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static deserializeHeterogenousList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 244
    const/4 v2, 0x0

    .line 262
    :cond_0
    return-object v2

    .line 245
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 246
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 248
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 249
    .local v4, "o":Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "type":Ljava/lang/String;
    const-string v6, "suggestion"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 253
    new-instance v3, Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-direct {v3}, Lcom/uservoice/uservoicesdk/model/Suggestion;-><init>()V

    .line 259
    .local v3, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :goto_1
    invoke-virtual {v3, v4}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 260
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v3    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_3
    const-string v6, "article"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    new-instance v3, Lcom/uservoice/uservoicesdk/model/Article;

    invoke-direct {v3}, Lcom/uservoice/uservoicesdk/model/Article;-><init>()V

    .restart local v3    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    goto :goto_1
.end method

.method protected static deserializeList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 204
    const/4 v3, 0x0

    .line 213
    :cond_0
    return-object v3

    .line 206
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 207
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 209
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 210
    .local v4, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;, "TT;"
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 211
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;, "TT;"
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/json/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reflection failed trying to call load on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 216
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lorg/json/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reflection failed trying to call load on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v5, Lorg/json/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reflection failed trying to instantiate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected static deserializeObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;
    .locals 6
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    const/4 v3, 0x0

    .line 230
    :goto_0
    return-object v3

    .line 227
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 228
    .local v2, "singleObject":Lorg/json/JSONObject;
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 229
    .local v1, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;, "TT;"
    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 230
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uservoice/uservoicesdk/model/BaseModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 231
    .end local v1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;, "TT;"
    .end local v2    # "singleObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON deserialization failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reflection failed trying to call load on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reflection failed trying to call load on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reflection failed trying to instantiate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static doDelete(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->doDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v0

    return-object v0
.end method

.method protected static doDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;",
            ")",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestTask;

    sget-object v2, Lcom/uservoice/uservoicesdk/rest/RestMethod;->DELETE:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/uservoice/uservoicesdk/rest/RestTask;-><init>(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/RestMethod;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)V

    .line 192
    .local v0, "task":Lcom/uservoice/uservoicesdk/rest/RestTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/rest/RestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    return-object v0
.end method

.method protected static doGet(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v0

    return-object v0
.end method

.method protected static doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;",
            ")",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestTask;

    sget-object v2, Lcom/uservoice/uservoicesdk/rest/RestMethod;->GET:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/uservoice/uservoicesdk/rest/RestTask;-><init>(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/RestMethod;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)V

    .line 180
    .local v0, "task":Lcom/uservoice/uservoicesdk/rest/RestTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/rest/RestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    return-object v0
.end method

.method protected static doPost(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v0

    return-object v0
.end method

.method protected static doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;",
            ")",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestTask;

    sget-object v2, Lcom/uservoice/uservoicesdk/rest/RestMethod;->POST:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/uservoice/uservoicesdk/rest/RestTask;-><init>(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/RestMethod;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)V

    .line 186
    .local v0, "task":Lcom/uservoice/uservoicesdk/rest/RestTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/rest/RestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    return-object v0
.end method

.method protected static doPut(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->doPut(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v0

    return-object v0
.end method

.method protected static doPut(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;",
            ")",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestTask;

    sget-object v2, Lcom/uservoice/uservoicesdk/rest/RestMethod;->PUT:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/uservoice/uservoicesdk/rest/RestTask;-><init>(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/RestMethod;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)V

    .line 198
    .local v0, "task":Lcom/uservoice/uservoicesdk/rest/RestTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/rest/RestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-object v0
.end method

.method protected static getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/uservoice/uservoicesdk/model/BaseModel;->getSession()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    return-object v0
.end method

.method protected static getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-static {}, Lcom/uservoice/uservoicesdk/model/BaseModel;->getSession()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    return-object v0
.end method

.method protected static getSession()Lcom/uservoice/uservoicesdk/Session;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public static load(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefsKey"    # Ljava/lang/String;
    .param p2, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "{}"

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "container":Lorg/json/JSONObject;
    invoke-static {v0, p2, p3}, Lcom/uservoice/uservoicesdk/model/BaseModel;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .end local v0    # "container":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deserializeMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 97
    .local v1, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 98
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "fieldKey":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 102
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/uservoice/uservoicesdk/model/BaseModel;->deserializeMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 104
    :cond_0
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    .end local v0    # "fieldKey":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method protected deserializeStringMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    .local v1, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "fieldKey":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    .end local v0    # "fieldKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method protected getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "dateString":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e1":Ljava/text/ParseException;
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getHtml(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/BaseModel;->id:I

    return v0
.end method

.method protected getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 34
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/model/BaseModel;->id:I

    .line 35
    return-void
.end method

.method public persist(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "prefsKey"    # Ljava/lang/String;
    .param p3, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v3, "object":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v0, "container":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/uservoice/uservoicesdk/model/BaseModel;->save(Lorg/json/JSONObject;)V

    .line 46
    invoke-virtual {v0, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 51
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v4

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Lorg/json/JSONException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public save(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v0, "id"

    iget v1, p0, Lcom/uservoice/uservoicesdk/model/BaseModel;->id:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    return-void
.end method

.method protected serializeList(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 124
    .local v1, "object":Lcom/uservoice/uservoicesdk/model/BaseModel;, "TT;"
    invoke-virtual {p0, v1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->serializeObject(Lcom/uservoice/uservoicesdk/model/BaseModel;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 126
    .end local v1    # "object":Lcom/uservoice/uservoicesdk/model/BaseModel;, "TT;"
    :cond_0
    return-object v0
.end method

.method protected serializeMap(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v1, "object":Lorg/json/JSONObject;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 113
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 114
    check-cast v2, Ljava/util/Map;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->serializeMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 116
    :cond_0
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 118
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method protected serializeObject(Lcom/uservoice/uservoicesdk/model/BaseModel;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "object":Lcom/uservoice/uservoicesdk/model/BaseModel;, "TT;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .local v0, "obj":Lorg/json/JSONObject;
    invoke-virtual {p1, v0}, Lcom/uservoice/uservoicesdk/model/BaseModel;->save(Lorg/json/JSONObject;)V

    .line 132
    return-object v0
.end method

.method protected serializeStringMap(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v1, "object":Lorg/json/JSONObject;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 92
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
