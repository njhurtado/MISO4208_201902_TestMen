.class Lcom/dropbox/core/v2/DbxRawClientV2$2;
.super Ljava/lang/Object;
.source "DbxRawClientV2.java"

# interfaces
.implements Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution",
        "<",
        "Lcom/dropbox/core/DbxDownloader",
        "<TResT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/v2/DbxRawClientV2;

.field final synthetic val$body:[B

.field final synthetic val$errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

.field final synthetic val$headers:Ljava/util/List;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->this$0:Lcom/dropbox/core/v2/DbxRawClientV2;

    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$body:[B

    iput-object p5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$headers:Ljava/util/List;

    iput-object p6, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    iput-object p7, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/dropbox/core/DbxDownloader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader",
            "<TResT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->this$0:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-static {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->access$000(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v0

    const-string v1, "OfficialDropboxJavaSDKv2"

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$body:[B

    iget-object v5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$headers:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestUtil;->startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v8

    .line 144
    .local v8, "response":Lcom/dropbox/core/http/HttpRequestor$Response;
    invoke-static {v8}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "requestId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 168
    invoke-static {v8}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :catch_0
    move-exception v6

    .line 171
    .local v6, "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1, v6}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 151
    .end local v6    # "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :sswitch_0
    :try_start_1
    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "dropbox-api-result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 152
    .local v11, "resultHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v11, :cond_0

    .line 153
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing Dropbox-API-Result header; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .end local v11    # "resultHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v6

    .line 173
    .local v6, "ex":Ljava/io/IOException;
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, v6}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 155
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v11    # "resultHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Dropbox-API-Result header; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 159
    .local v10, "resultHeader":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 160
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null Dropbox-API-Result header; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v0, v10}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 164
    .local v9, "result":Ljava/lang/Object;, "TResT;"
    new-instance v0, Lcom/dropbox/core/DbxDownloader;

    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/dropbox/core/DbxDownloader;-><init>(Ljava/lang/Object;Ljava/io/InputStream;)V

    return-object v0

    .line 166
    .end local v9    # "result":Ljava/lang/Object;, "TResT;"
    .end local v10    # "resultHeader":Ljava/lang/String;
    .end local v11    # "resultHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-static {v0, v8}, Lcom/dropbox/core/DbxWrappedException;->fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_0
        0x199 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->execute()Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method
