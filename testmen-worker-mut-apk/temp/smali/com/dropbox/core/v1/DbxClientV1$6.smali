.class Lcom/dropbox/core/v1/DbxClientV1$6;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v1/DbxClientV1;->startGetSomething(Ljava/lang/String;[Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker",
        "<",
        "Lcom/dropbox/core/v1/DbxClientV1$Downloader;",
        "Lcom/dropbox/core/DbxException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1;

.field final synthetic val$apiPath:Ljava/lang/String;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$params:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dropbox/core/v1/DbxClientV1;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->val$apiPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->val$params:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 483
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1;->access$000(Lcom/dropbox/core/v1/DbxClientV1;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-static {v1}, Lcom/dropbox/core/v1/DbxClientV1;->access$100(Lcom/dropbox/core/v1/DbxClientV1;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dropbox-Java-SDK"

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->val$host:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->val$apiPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v1/DbxClientV1$6;->val$params:[Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->startGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v12

    .line 485
    .local v12, "response":Lcom/dropbox/core/http/HttpRequestor$Response;
    const/4 v10, 0x0

    .line 487
    .local v10, "passedOwnershipOfStream":Z
    :try_start_0
    invoke-virtual {v12}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 508
    if-nez v10, :cond_0

    .line 510
    :try_start_1
    invoke-virtual {v12}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 515
    :cond_0
    :goto_0
    return-object v6

    .line 488
    :cond_1
    :try_start_2
    invoke-virtual {v12}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    invoke-static {v12}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    :catchall_0
    move-exception v0

    if-nez v10, :cond_2

    .line 510
    :try_start_3
    invoke-virtual {v12}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 515
    :cond_2
    :goto_1
    throw v0

    .line 490
    :cond_3
    :try_start_4
    const-string v0, "x-dropbox-metadata"

    invoke-static {v12, v0}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeader(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .line 493
    .local v9, "metadataString":Ljava/lang/String;
    :try_start_5
    sget-object v0, Lcom/dropbox/core/v1/DbxEntry$File;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, v9}, Lcom/dropbox/core/json/JsonReader;->readFully(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dropbox/core/v1/DbxEntry$File;
    :try_end_5
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 501
    .local v8, "metadata":Lcom/dropbox/core/v1/DbxEntry$File;
    :try_start_6
    new-instance v13, Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    invoke-virtual {v12}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v13, v8, v0}, Lcom/dropbox/core/v1/DbxClientV1$Downloader;-><init>(Lcom/dropbox/core/v1/DbxEntry$File;Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 503
    .local v13, "result":Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    const/4 v10, 0x1

    .line 508
    if-nez v10, :cond_4

    .line 510
    :try_start_7
    invoke-virtual {v12}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_2
    move-object v6, v13

    .line 515
    goto :goto_0

    .line 495
    .end local v8    # "metadata":Lcom/dropbox/core/v1/DbxEntry$File;
    .end local v13    # "result":Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    :catch_0
    move-exception v7

    .line 496
    .local v7, "ex":Lcom/dropbox/core/json/JsonReadException;
    :try_start_8
    invoke-static {v12}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v11

    .line 497
    .local v11, "requestId":Ljava/lang/String;
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad JSON in X-Dropbox-Metadata header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/dropbox/core/json/JsonReadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1, v7}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 512
    .end local v7    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .end local v9    # "metadataString":Ljava/lang/String;
    .end local v11    # "requestId":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_1

    .restart local v8    # "metadata":Lcom/dropbox/core/v1/DbxEntry$File;
    .restart local v9    # "metadataString":Ljava/lang/String;
    .restart local v13    # "result":Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v8    # "metadata":Lcom/dropbox/core/v1/DbxEntry$File;
    .end local v9    # "metadataString":Ljava/lang/String;
    .end local v13    # "result":Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$6;->run()Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    move-result-object v0

    return-object v0
.end method
