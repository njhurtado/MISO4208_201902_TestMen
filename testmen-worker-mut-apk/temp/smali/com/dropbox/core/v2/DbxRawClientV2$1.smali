.class Lcom/dropbox/core/v2/DbxRawClientV2$1;
.super Ljava/lang/Object;
.source "DbxRawClientV2.java"

# interfaces
.implements Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution",
        "<TResT;>;"
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
    .line 97
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->this$0:Lcom/dropbox/core/v2/DbxRawClientV2;

    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$body:[B

    iput-object p5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$headers:Ljava/util/List;

    iput-object p6, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    iput-object p7, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->this$0:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-static {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->access$000(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v0

    const-string v1, "OfficialDropboxJavaSDKv2"

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$body:[B

    iget-object v5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$headers:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestUtil;->startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v8

    .line 102
    .local v8, "response":Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_start_0
    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 108
    invoke-static {v8}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :catch_0
    move-exception v6

    .line 111
    .local v6, "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    invoke-static {v8}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "requestId":Ljava/lang/String;
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

    .line 104
    .end local v6    # "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    .end local v7    # "requestId":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 106
    :sswitch_1
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->val$errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-static {v0, v8}, Lcom/dropbox/core/DbxWrappedException;->fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :catch_1
    move-exception v6

    .line 114
    .local v6, "ex":Ljava/io/IOException;
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, v6}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x199 -> :sswitch_1
    .end sparse-switch
.end method
