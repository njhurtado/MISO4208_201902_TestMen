.class Lcom/dropbox/core/v1/DbxClientV1$23;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v1/DbxClientV1;->move(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dropbox/core/v1/DbxClientV1;

    .prologue
    .line 2197
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$23;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 4
    .param p1, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2202
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_1

    .line 2206
    :cond_0
    :goto_0
    return-object v1

    .line 2203
    :cond_1
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v1

    throw v1

    .line 2204
    :cond_2
    sget-object v2, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v2, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;

    .line 2205
    .local v0, "dwc":Lcom/dropbox/core/v1/DbxEntry$WithChildren;
    if-eqz v0, :cond_0

    .line 2206
    iget-object v1, v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->entry:Lcom/dropbox/core/v1/DbxEntry;

    goto :goto_0
.end method

.method public bridge synthetic handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2197
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$23;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxEntry;

    move-result-object v0

    return-object v0
.end method
