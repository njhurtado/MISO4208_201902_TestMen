.class Lcom/dropbox/core/v1/DbxClientV1$20;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v1/DbxClientV1;->copyFromCopyRef(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry;
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
    .line 2111
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 3
    .param p1, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2116
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v1

    throw v1

    .line 2117
    :cond_0
    sget-object v1, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v1, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;

    .line 2118
    .local v0, "dwc":Lcom/dropbox/core/v1/DbxEntry$WithChildren;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 2119
    :goto_0
    return-object v1

    :cond_1
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
    .line 2111
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$20;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxEntry;

    move-result-object v0

    return-object v0
.end method
