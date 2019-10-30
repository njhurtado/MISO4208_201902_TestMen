.class public Lcom/uservoice/uservoicesdk/model/CustomField;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "CustomField.java"


# instance fields
.field private name:Ljava/lang/String;

.field private predefinedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private required:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPredefinedValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->predefinedValues:Ljava/util/List;

    return-object v0
.end method

.method public isPredefined()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->predefinedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->required:Z

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
    .line 17
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 18
    const-string v3, "name"

    invoke-virtual {p0, p1, v3}, Lcom/uservoice/uservoicesdk/model/CustomField;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->name:Ljava/lang/String;

    .line 19
    const-string v3, "allow_blank"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->required:Z

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->predefinedValues:Ljava/util/List;

    .line 21
    const-string v3, "possible_values"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    const-string v3, "possible_values"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 23
    .local v2, "values":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 24
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 25
    .local v1, "value":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->predefinedValues:Ljava/util/List;

    const-string v4, "value"

    invoke-virtual {p0, v1, v4}, Lcom/uservoice/uservoicesdk/model/CustomField;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    .end local v0    # "i":I
    .end local v1    # "value":Lorg/json/JSONObject;
    .end local v2    # "values":Lorg/json/JSONArray;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public save(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->save(Lorg/json/JSONObject;)V

    .line 33
    const-string v3, "name"

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->name:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v4, "allow_blank"

    iget-boolean v3, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->required:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 36
    .local v0, "jsonPredefinedValues":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/CustomField;->predefinedValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    .local v2, "value":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v1, "predefinedValue":Lorg/json/JSONObject;
    const-string v4, "value"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 34
    .end local v0    # "jsonPredefinedValues":Lorg/json/JSONArray;
    .end local v1    # "predefinedValue":Lorg/json/JSONObject;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 41
    .restart local v0    # "jsonPredefinedValues":Lorg/json/JSONArray;
    :cond_1
    const-string v3, "possible_values"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    return-void
.end method
