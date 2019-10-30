.class public Lcom/uservoice/uservoicesdk/Config;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "Config.java"


# instance fields
.field private attachmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private customFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private forumId:I

.field private guid:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private showContactUs:Z

.field private showForum:Z

.field private showKnowledgeBase:Z

.field private showPostIdea:Z

.field private site:Ljava/lang/String;

.field private topicId:I

.field private userTraits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->customFields:Ljava/util/Map;

    .line 23
    iput v2, p0, Lcom/uservoice/uservoicesdk/Config;->topicId:I

    .line 24
    iput v2, p0, Lcom/uservoice/uservoicesdk/Config;->forumId:I

    .line 25
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showForum:Z

    .line 26
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showPostIdea:Z

    .line 27
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showContactUs:Z

    .line 28
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showKnowledgeBase:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->attachmentList:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "site"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->customFields:Ljava/util/Map;

    .line 23
    iput v2, p0, Lcom/uservoice/uservoicesdk/Config;->topicId:I

    .line 24
    iput v2, p0, Lcom/uservoice/uservoicesdk/Config;->forumId:I

    .line 25
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showForum:Z

    .line 26
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showPostIdea:Z

    .line 27
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showContactUs:Z

    .line 28
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showKnowledgeBase:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->attachmentList:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Config;->site:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "site"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->customFields:Ljava/util/Map;

    .line 23
    iput v2, p0, Lcom/uservoice/uservoicesdk/Config;->topicId:I

    .line 24
    iput v2, p0, Lcom/uservoice/uservoicesdk/Config;->forumId:I

    .line 25
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showForum:Z

    .line 26
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showPostIdea:Z

    .line 27
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showContactUs:Z

    .line 28
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showKnowledgeBase:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->attachmentList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Config;->site:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/Config;->key:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/Config;->secret:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/uservoice/uservoicesdk/model/Attachment;)V
    .locals 1
    .param p1, "attachment"    # Lcom/uservoice/uservoicesdk/model/Attachment;

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->attachmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    return-void
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->attachmentList:Ljava/util/List;

    return-object v0
.end method

.method public getCustomFields()Ljava/util/Map;
    .locals 1
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
    .line 69
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->customFields:Ljava/util/Map;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getForumId()I
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/uservoice/uservoicesdk/Config;->forumId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getDefaultForumId()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uservoice/uservoicesdk/Config;->forumId:I

    goto :goto_0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getSite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->site:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/uservoice/uservoicesdk/Config;->topicId:I

    return v0
.end method

.method public getUserTraits()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    return-object v0
.end method

.method public identifyUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Config;->guid:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/Config;->name:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/Config;->email:Ljava/lang/String;

    .line 142
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "name"

    invoke-virtual {p0, v0, p2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "email"

    invoke-virtual {p0, v0, p3}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
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
    .line 218
    const-string v0, "site"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/Config;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->site:Ljava/lang/String;

    .line 219
    const-string v0, "key"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/Config;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->key:Ljava/lang/String;

    .line 220
    const-string v0, "secret"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/Config;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->secret:Ljava/lang/String;

    .line 221
    const-string v0, "email"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/Config;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->email:Ljava/lang/String;

    .line 222
    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/Config;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->name:Ljava/lang/String;

    .line 223
    const-string v0, "guid"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/Config;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->guid:Ljava/lang/String;

    .line 224
    const-string v0, "customFields"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/Config;->deserializeStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->customFields:Ljava/util/Map;

    .line 225
    const-string v0, "topicId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/Config;->topicId:I

    .line 226
    const-string v0, "forumId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/Config;->forumId:I

    .line 227
    const-string v0, "showForum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/Config;->showForum:Z

    .line 228
    const-string v0, "showPostIdea"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/Config;->showPostIdea:Z

    .line 229
    const-string v0, "showContactUs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/Config;->showContactUs:Z

    .line 230
    const-string v0, "showKnowledgeBase"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/Config;->showKnowledgeBase:Z

    .line 231
    const-string v0, "userTraits"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/Config;->deserializeMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    .line 232
    const-string v0, "attachmentList"

    const-class v1, Lcom/uservoice/uservoicesdk/model/Attachment;

    invoke-static {p1, v0, v1}, Lcom/uservoice/uservoicesdk/Config;->deserializeList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->attachmentList:Ljava/util/List;

    .line 233
    return-void
.end method

.method public putAccountTrait(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;F)V

    .line 181
    return-void
.end method

.method public putAccountTrait(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method public putAccountTrait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public putAccountTrait(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;Ljava/util/Date;)V

    .line 185
    return-void
.end method

.method public putAccountTrait(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public putUserTrait(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 160
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public putUserTrait(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public putUserTrait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public putUserTrait(Ljava/lang/String;Ljava/util/Date;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public putUserTrait(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
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
    .line 199
    const-string v0, "site"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->site:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v0, "key"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v0, "secret"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->secret:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v0, "email"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v0, "name"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v0, "guid"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v0, "customFields"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->customFields:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/uservoice/uservoicesdk/Config;->serializeStringMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v0, "topicId"

    iget v1, p0, Lcom/uservoice/uservoicesdk/Config;->topicId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string v0, "forumId"

    iget v1, p0, Lcom/uservoice/uservoicesdk/Config;->forumId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string v0, "showForum"

    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showForum:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 209
    const-string v0, "showPostIdea"

    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showPostIdea:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 210
    const-string v0, "showContactUs"

    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showContactUs:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 211
    const-string v0, "showKnowledgeBase"

    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/Config;->showKnowledgeBase:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 212
    const-string v0, "userTraits"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->userTraits:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/uservoice/uservoicesdk/Config;->serializeMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v0, "attachmentList"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Config;->attachmentList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/uservoice/uservoicesdk/Config;->serializeList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    return-void
.end method

.method public setCustomFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "customFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Config;->customFields:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public setForumId(I)V
    .locals 0
    .param p1, "forumId"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/uservoice/uservoicesdk/Config;->forumId:I

    .line 92
    return-void
.end method

.method public setShowContactUs(Z)V
    .locals 0
    .param p1, "showContactUs"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/uservoice/uservoicesdk/Config;->showContactUs:Z

    .line 126
    return-void
.end method

.method public setShowForum(Z)V
    .locals 0
    .param p1, "showForum"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/uservoice/uservoicesdk/Config;->showForum:Z

    .line 106
    return-void
.end method

.method public setShowKnowledgeBase(Z)V
    .locals 0
    .param p1, "showKnowledgeBase"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/uservoice/uservoicesdk/Config;->showKnowledgeBase:Z

    .line 136
    return-void
.end method

.method public setShowPostIdea(Z)V
    .locals 0
    .param p1, "showPostIdea"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/uservoice/uservoicesdk/Config;->showPostIdea:Z

    .line 116
    return-void
.end method

.method public setTopicId(I)V
    .locals 0
    .param p1, "topicId"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/uservoice/uservoicesdk/Config;->topicId:I

    .line 82
    return-void
.end method

.method public shouldShowContactUs()Z
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->isTicketSystemEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/Config;->showContactUs:Z

    goto :goto_0
.end method

.method public shouldShowForum()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->isFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/Config;->showForum:Z

    goto :goto_0
.end method

.method public shouldShowKnowledgeBase()Z
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->isTicketSystemEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/Config;->showKnowledgeBase:Z

    goto :goto_0
.end method

.method public shouldShowPostIdea()Z
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->isFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/Config;->showPostIdea:Z

    goto :goto_0
.end method
