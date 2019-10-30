.class public Lcom/uservoice/uservoicesdk/rest/RestResult;
.super Ljava/lang/Object;
.source "RestResult.java"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private object:Lorg/json/JSONObject;

.field private statusCode:I


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->statusCode:I

    .line 14
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->object:Lorg/json/JSONObject;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->exception:Ljava/lang/Exception;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "statusCode"    # I
    .param p3, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->exception:Ljava/lang/Exception;

    .line 23
    iput p2, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->statusCode:I

    .line 24
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->object:Lorg/json/JSONObject;

    .line 25
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    const-string v1, "%s -- %s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->statusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->object:Lorg/json/JSONObject;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->object:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->statusCode:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->object:Lorg/json/JSONObject;

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uservoice/uservoicesdk/rest/RestResult;->statusCode:I

    const/16 v1, 0x190

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
