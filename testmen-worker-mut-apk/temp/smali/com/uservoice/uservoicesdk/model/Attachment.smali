.class public Lcom/uservoice/uservoicesdk/model/Attachment;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "Attachment.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->fileName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->contentType:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->data:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->fileName:Ljava/lang/String;

    return-object v0
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
    .line 39
    const-string v0, "fileName"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/Attachment;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->fileName:Ljava/lang/String;

    .line 40
    const-string v0, "contentType"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/Attachment;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->contentType:Ljava/lang/String;

    .line 41
    const-string v0, "data"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/Attachment;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->data:Ljava/lang/String;

    .line 42
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
    .line 32
    const-string v0, "fileName"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v0, "contentType"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v0, "data"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/model/Attachment;->data:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    return-void
.end method
