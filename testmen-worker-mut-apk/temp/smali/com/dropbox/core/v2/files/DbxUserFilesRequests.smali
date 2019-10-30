.class public Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
.super Ljava/lang/Object;
.source "DbxUserFilesRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0
    .param p1, "client"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 40
    return-void
.end method


# virtual methods
.method alphaGetMetadata(Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/alpha/get_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v8

    .line 65
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;

    const-string v2, "2/files/alpha/get_metadata"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)V

    throw v1
.end method

.method public alphaGetMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "_arg":Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->alphaGetMetadata(Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v1

    return-object v1
.end method

.method public alphaGetMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    move-result-object v0

    .line 108
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;)V

    return-object v1
.end method

.method alphaUpload(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 7
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/alpha/upload"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v6

    .line 131
    .local v6, "_uploader":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    invoke-direct {v0, v6}, Lcom/dropbox/core/v2/files/AlphaUploadUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;)V

    return-object v0
.end method

.method public alphaUpload(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "_arg":Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->alphaUpload(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object v1

    return-object v1
.end method

.method public alphaUploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object v0

    .line 177
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;)V

    return-object v1
.end method

.method copy(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/RelocationArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 201
    :catch_0
    move-exception v8

    .line 202
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    const-string v2, "2/files/copy"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw v1
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v0, "_arg":Lcom/dropbox/core/v2/files/RelocationArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copy(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v1

    return-object v1
.end method

.method copyBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/RelocationBatchArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    .line 279
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 273
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 281
    :catch_0
    move-exception v8

    .line 282
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"copy_batch\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method public copyBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/RelocationPath;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;)V

    .line 312
    .local v0, "_arg":Lcom/dropbox/core/v2/files/RelocationBatchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v1

    return-object v1
.end method

.method public copyBatchBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/CopyBatchBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/CopyBatchBuilder;"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/RelocationPath;>;"
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;->newBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    move-result-object v0

    .line 337
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/CopyBatchBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/CopyBatchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;)V

    return-object v1
.end method

.method copyBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/async/PollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 362
    :catch_0
    move-exception v8

    .line 363
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string v2, "2/files/copy_batch/check"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public copyBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 2
    .param p1, "asyncJobId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "_arg":Lcom/dropbox/core/v2/async/PollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v1

    return-object v1
.end method

.method public copyBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/CopyBuilder;
    .locals 2
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object v0

    .line 249
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/CopyBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/CopyBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object v1
.end method

.method copyReferenceGet(Lcom/dropbox/core/v2/files/GetCopyReferenceArg;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/GetCopyReferenceArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_reference/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/GetCopyReferenceArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 404
    :catch_0
    move-exception v8

    .line 405
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;

    const-string v2, "2/files/copy_reference/get"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetCopyReferenceError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetCopyReferenceError;)V

    throw v1
.end method

.method public copyReferenceGet(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lcom/dropbox/core/v2/files/GetCopyReferenceArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceArg;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, "_arg":Lcom/dropbox/core/v2/files/GetCopyReferenceArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyReferenceGet(Lcom/dropbox/core/v2/files/GetCopyReferenceArg;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;

    move-result-object v1

    return-object v1
.end method

.method copyReferenceSave(Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/copy_reference/save"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/SaveCopyReferenceArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveCopyReferenceResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 446
    :catch_0
    move-exception v8

    .line 447
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;

    const-string v2, "2/files/copy_reference/save"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SaveCopyReferenceError;)V

    throw v1
.end method

.method public copyReferenceSave(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    .locals 2
    .param p1, "copyReference"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .local v0, "_arg":Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyReferenceSave(Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;

    move-result-object v1

    return-object v1
.end method

.method createFolder(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/CreateFolderArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/create_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CreateFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/CreateFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/FolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 487
    :catch_0
    move-exception v8

    .line 488
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/CreateFolderErrorException;

    const-string v2, "2/files/create_folder"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/CreateFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/CreateFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/CreateFolderError;)V

    throw v1
.end method

.method public createFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CreateFolderArg;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "_arg":Lcom/dropbox/core/v2/files/CreateFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->createFolder(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object v1

    return-object v1
.end method

.method public createFolder(Ljava/lang/String;Z)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "autorename"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/CreateFolderArg;-><init>(Ljava/lang/String;Z)V

    .line 522
    .local v0, "_arg":Lcom/dropbox/core/v2/files/CreateFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->createFolder(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object v1

    return-object v1
.end method

.method delete(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/DeleteArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 549
    :catch_0
    move-exception v8

    .line 550
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/DeleteErrorException;

    const-string v2, "2/files/delete"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DeleteError;)V

    throw v1
.end method

.method public delete(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, "_arg":Lcom/dropbox/core/v2/files/DeleteArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->delete(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v1

    return-object v1
.end method

.method deleteBatch(Lcom/dropbox/core/v2/files/DeleteBatchArg;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/DeleteBatchArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/delete_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    .line 596
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 590
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 598
    :catch_0
    move-exception v8

    .line 599
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"delete_batch\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method public deleteBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/DeleteArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/DeleteBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/DeleteArg;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchArg;-><init>(Ljava/util/List;)V

    .line 620
    .local v0, "_arg":Lcom/dropbox/core/v2/files/DeleteBatchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->deleteBatch(Lcom/dropbox/core/v2/files/DeleteBatchArg;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v1

    return-object v1
.end method

.method deleteBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/async/PollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/delete_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 645
    :catch_0
    move-exception v8

    .line 646
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string v2, "2/files/delete_batch/check"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public deleteBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 2
    .param p1, "asyncJobId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 663
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "_arg":Lcom/dropbox/core/v2/async/PollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->deleteBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v1

    return-object v1
.end method

.method download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 10
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/DownloadArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/DownloadArg;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 681
    .local p2, "_headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/download"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/DownloadArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DownloadArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/files/DownloadError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DownloadError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 690
    :catch_0
    move-exception v9

    .line 691
    .local v9, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/DownloadErrorException;

    const-string v2, "2/files/download"

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DownloadError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/DownloadErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DownloadError;)V

    throw v1
.end method

.method public download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 709
    new-instance v0, Lcom/dropbox/core/v2/files/DownloadArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DownloadArg;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, "_arg":Lcom/dropbox/core/v2/files/DownloadArg;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v1

    return-object v1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 731
    if-eqz p2, :cond_1

    .line 732
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 733
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'rev\' is shorter than 9"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_0
    const-string v1, "[0-9a-f]+"

    invoke-static {v1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'rev\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 739
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/DownloadArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/DownloadArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .local v0, "_arg":Lcom/dropbox/core/v2/files/DownloadArg;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v1

    return-object v1
.end method

.method public downloadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DownloadBuilder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 757
    new-instance v0, Lcom/dropbox/core/v2/files/DownloadBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/DownloadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method getMetadata(Lcom/dropbox/core/v2/files/GetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/GetMetadataArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 781
    :catch_0
    move-exception v8

    .line 782
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/GetMetadataErrorException;

    const-string v2, "2/files/get_metadata"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetMetadataError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/GetMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetMetadataError;)V

    throw v1
.end method

.method public getMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 803
    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg;-><init>(Ljava/lang/String;)V

    .line 804
    .local v0, "_arg":Lcom/dropbox/core/v2/files/GetMetadataArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getMetadata(Lcom/dropbox/core/v2/files/GetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v1

    return-object v1
.end method

.method public getMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 822
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    move-result-object v0

    .line 823
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/GetMetadataBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/GetMetadataBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;)V

    return-object v1
.end method

.method getPreview(Lcom/dropbox/core/v2/files/PreviewArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 10
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/PreviewArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/PreviewArg;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 842
    .local p2, "_headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_preview"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/PreviewArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 851
    :catch_0
    move-exception v9

    .line 852
    .local v9, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/PreviewErrorException;

    const-string v2, "2/files/get_preview"

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/PreviewErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/PreviewError;)V

    throw v1
.end method

.method public getPreview(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 872
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/PreviewArg;-><init>(Ljava/lang/String;)V

    .line 873
    .local v0, "_arg":Lcom/dropbox/core/v2/files/PreviewArg;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getPreview(Lcom/dropbox/core/v2/files/PreviewArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v1

    return-object v1
.end method

.method public getPreview(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 896
    if-eqz p2, :cond_1

    .line 897
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 898
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'rev\' is shorter than 9"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 900
    :cond_0
    const-string v1, "[0-9a-f]+"

    invoke-static {v1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 901
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'rev\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 904
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/PreviewArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .local v0, "_arg":Lcom/dropbox/core/v2/files/PreviewArg;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getPreview(Lcom/dropbox/core/v2/files/PreviewArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v1

    return-object v1
.end method

.method public getPreviewBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetPreviewBuilder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 924
    new-instance v0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/GetPreviewBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method getTemporaryLink(Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_temporary_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/GetTemporaryLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetTemporaryLinkArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/GetTemporaryLinkResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetTemporaryLinkResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 947
    :catch_0
    move-exception v8

    .line 948
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;

    const-string v2, "2/files/get_temporary_link"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetTemporaryLinkError;)V

    throw v1
.end method

.method public getTemporaryLink(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 966
    new-instance v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;-><init>(Ljava/lang/String;)V

    .line 967
    .local v0, "_arg":Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getTemporaryLink(Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;

    move-result-object v1

    return-object v1
.end method

.method getThumbnail(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 10
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/ThumbnailArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/ThumbnailArg;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 987
    .local p2, "_headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/get_thumbnail"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 996
    :catch_0
    move-exception v9

    .line 997
    .local v9, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/ThumbnailErrorException;

    const-string v2, "2/files/get_thumbnail"

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ThumbnailErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ThumbnailError;)V

    throw v1
.end method

.method public getThumbnail(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v0, "_arg":Lcom/dropbox/core/v2/files/ThumbnailArg;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getThumbnail(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v1

    return-object v1
.end method

.method public getThumbnailBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1044
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    move-result-object v0

    .line 1045
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;)V

    return-object v1
.end method

.method listFolder(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/ListFolderArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1075
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1083
    :catch_0
    move-exception v8

    .line 1084
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderErrorException;

    const-string v2, "2/files/list_folder"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderError;)V

    throw v1
.end method

.method public listFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1119
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v0, "_arg":Lcom/dropbox/core/v2/files/ListFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolder(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v1

    return-object v1
.end method

.method public listFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1154
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    move-result-object v0

    .line 1155
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/ListFolderBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V

    return-object v1
.end method

.method listFolderContinue(Lcom/dropbox/core/v2/files/ListFolderContinueArg;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/ListFolderContinueArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1179
    :catch_0
    move-exception v8

    .line 1180
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;

    const-string v2, "2/files/list_folder/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderContinueError;)V

    throw v1
.end method

.method public listFolderContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1199
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderContinueArg;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v0, "_arg":Lcom/dropbox/core/v2/files/ListFolderContinueArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderContinue(Lcom/dropbox/core/v2/files/ListFolderContinueArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v1

    return-object v1
.end method

.method listFolderGetLatestCursor(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/ListFolderArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1218
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder/get_latest_cursor"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1226
    :catch_0
    move-exception v8

    .line 1227
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderErrorException;

    const-string v2, "2/files/list_folder/get_latest_cursor"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderError;)V

    throw v1
.end method

.method public listFolderGetLatestCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1250
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v0, "_arg":Lcom/dropbox/core/v2/files/ListFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderGetLatestCursor(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;

    move-result-object v1

    return-object v1
.end method

.method public listFolderGetLatestCursorBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1273
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    move-result-object v0

    .line 1274
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V

    return-object v1
.end method

.method listFolderLongpoll(Lcom/dropbox/core/v2/files/ListFolderLongpollArg;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/ListFolderLongpollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1294
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_folder/longpoll"

    const/4 v4, 0x1

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1302
    :catch_0
    move-exception v8

    .line 1303
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;

    const-string v2, "2/files/list_folder/longpoll"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderLongpollError;)V

    throw v1
.end method

.method public listFolderLongpoll(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1331
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v0, "_arg":Lcom/dropbox/core/v2/files/ListFolderLongpollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderLongpoll(Lcom/dropbox/core/v2/files/ListFolderLongpollArg;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    move-result-object v1

    return-object v1
.end method

.method public listFolderLongpoll(Ljava/lang/String;J)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 4
    .param p1, "cursor"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1362
    const-wide/16 v2, 0x1e

    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    .line 1363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'timeout\' is smaller than 30L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1365
    :cond_0
    const-wide/16 v2, 0x1e0

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 1366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'timeout\' is larger than 480L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1368
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;-><init>(Ljava/lang/String;J)V

    .line 1369
    .local v0, "_arg":Lcom/dropbox/core/v2/files/ListFolderLongpollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderLongpoll(Lcom/dropbox/core/v2/files/ListFolderLongpollArg;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    move-result-object v1

    return-object v1
.end method

.method listRevisions(Lcom/dropbox/core/v2/files/ListRevisionsArg;)Lcom/dropbox/core/v2/files/ListRevisionsResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/ListRevisionsArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListRevisionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/list_revisions"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListRevisionsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1390
    :catch_0
    move-exception v8

    .line 1391
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/ListRevisionsErrorException;

    const-string v2, "2/files/list_revisions"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListRevisionsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListRevisionsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListRevisionsError;)V

    throw v1
.end method

.method public listRevisions(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListRevisionsResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListRevisionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1409
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v0, "_arg":Lcom/dropbox/core/v2/files/ListRevisionsArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listRevisions(Lcom/dropbox/core/v2/files/ListRevisionsArg;)Lcom/dropbox/core/v2/files/ListRevisionsResult;

    move-result-object v1

    return-object v1
.end method

.method public listRevisions(Ljava/lang/String;J)Lcom/dropbox/core/v2/files/ListRevisionsResult;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListRevisionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1426
    const-wide/16 v2, 0x1

    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    .line 1427
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is smaller than 1L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1429
    :cond_0
    const-wide/16 v2, 0x64

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 1430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is larger than 100L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1432
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;J)V

    .line 1433
    .local v0, "_arg":Lcom/dropbox/core/v2/files/ListRevisionsArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listRevisions(Lcom/dropbox/core/v2/files/ListRevisionsArg;)Lcom/dropbox/core/v2/files/ListRevisionsResult;

    move-result-object v1

    return-object v1
.end method

.method move(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/RelocationArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1449
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1457
    :catch_0
    move-exception v8

    .line 1458
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    const-string v2, "2/files/move"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw v1
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 2
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1482
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    .local v0, "_arg":Lcom/dropbox/core/v2/files/RelocationArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->move(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v1

    return-object v1
.end method

.method moveBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/RelocationBatchArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1526
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    .line 1532
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1526
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1534
    :catch_0
    move-exception v8

    .line 1535
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"move_batch\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method public moveBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1561
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/RelocationPath;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;)V

    .line 1562
    .local v0, "_arg":Lcom/dropbox/core/v2/files/RelocationBatchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->moveBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v1

    return-object v1
.end method

.method public moveBatchBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/MoveBatchBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/MoveBatchBuilder;"
        }
    .end annotation

    .prologue
    .line 1583
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/RelocationPath;>;"
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;->newBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    move-result-object v0

    .line 1584
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/MoveBatchBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/MoveBatchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;)V

    return-object v1
.end method

.method moveBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/async/PollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1601
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/move_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1609
    :catch_0
    move-exception v8

    .line 1610
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string v2, "2/files/move_batch/check"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public moveBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 2
    .param p1, "asyncJobId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1627
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v0, "_arg":Lcom/dropbox/core/v2/async/PollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->moveBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v1

    return-object v1
.end method

.method public moveBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/MoveBuilder;
    .locals 2
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .prologue
    .line 1504
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object v0

    .line 1505
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/MoveBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/MoveBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object v1
.end method

.method permanentlyDelete(Lcom/dropbox/core/v2/files/DeleteArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/DeleteArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1643
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/permanently_delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteArg$Serializer;

    .line 1648
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    move-object v3, p1

    .line 1643
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    return-void

    .line 1651
    :catch_0
    move-exception v8

    .line 1652
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/DeleteErrorException;

    const-string v2, "2/files/permanently_delete"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DeleteError;)V

    throw v1
.end method

.method public permanentlyDelete(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1668
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;)V

    .line 1669
    .local v0, "_arg":Lcom/dropbox/core/v2/files/DeleteArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->permanentlyDelete(Lcom/dropbox/core/v2/files/DeleteArg;)V

    .line 1670
    return-void
.end method

.method propertiesAdd(Lcom/dropbox/core/v2/files/PropertyGroupWithPath;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AddPropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1683
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;

    .line 1688
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;

    move-object v3, p1

    .line 1683
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    return-void

    .line 1691
    :catch_0
    move-exception v8

    .line 1692
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/AddPropertiesErrorException;

    const-string v2, "2/files/properties/add"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/AddPropertiesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/AddPropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/AddPropertiesError;)V

    throw v1
.end method

.method public propertiesAdd(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AddPropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1709
    .local p2, "propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1710
    .local v0, "_arg":Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesAdd(Lcom/dropbox/core/v2/files/PropertyGroupWithPath;)V

    .line 1711
    return-void
.end method

.method propertiesOverwrite(Lcom/dropbox/core/v2/files/PropertyGroupWithPath;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/InvalidPropertyGroupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1724
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/overwrite"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;

    .line 1729
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;

    move-object v3, p1

    .line 1724
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    return-void

    .line 1732
    :catch_0
    move-exception v8

    .line 1733
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupErrorException;

    const-string v2, "2/files/properties/overwrite"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;)V

    throw v1
.end method

.method public propertiesOverwrite(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/InvalidPropertyGroupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1750
    .local p2, "propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1751
    .local v0, "_arg":Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesOverwrite(Lcom/dropbox/core/v2/files/PropertyGroupWithPath;)V

    .line 1752
    return-void
.end method

.method propertiesRemove(Lcom/dropbox/core/v2/files/RemovePropertiesArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/RemovePropertiesArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RemovePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1768
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RemovePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RemovePropertiesArg$Serializer;

    .line 1773
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;

    move-object v3, p1

    .line 1768
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    return-void

    .line 1776
    :catch_0
    move-exception v8

    .line 1777
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/RemovePropertiesErrorException;

    const-string v2, "2/files/properties/remove"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RemovePropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RemovePropertiesError;)V

    throw v1
.end method

.method public propertiesRemove(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RemovePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1798
    .local p2, "propertyTemplateIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/RemovePropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RemovePropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1799
    .local v0, "_arg":Lcom/dropbox/core/v2/files/RemovePropertiesArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesRemove(Lcom/dropbox/core/v2/files/RemovePropertiesArg;)V

    .line 1800
    return-void
.end method

.method propertiesTemplateGet(Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;)Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/properties/PropertyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1814
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/template/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1822
    :catch_0
    move-exception v8

    .line 1823
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/properties/PropertyTemplateErrorException;

    const-string v2, "2/files/properties/template/get"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/properties/PropertyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/properties/PropertyTemplateError;)V

    throw v1
.end method

.method public propertiesTemplateGet(Ljava/lang/String;)Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
    .locals 2
    .param p1, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/properties/PropertyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1840
    new-instance v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v0, "_arg":Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesTemplateGet(Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;)Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;

    move-result-object v1

    return-object v1
.end method

.method public propertiesTemplateList()Lcom/dropbox/core/v2/properties/ListPropertyTemplateIds;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/properties/PropertyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1855
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/template/list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1859
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/properties/ListPropertyTemplateIds$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/ListPropertyTemplateIds$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;

    .line 1855
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/ListPropertyTemplateIds;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1863
    :catch_0
    move-exception v8

    .line 1864
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/properties/PropertyTemplateErrorException;

    const-string v2, "2/files/properties/template/list"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/properties/PropertyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/properties/PropertyTemplateError;)V

    throw v1
.end method

.method propertiesUpdate(Lcom/dropbox/core/v2/files/UpdatePropertyGroupArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/UpdatePropertyGroupArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/UpdatePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1880
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/properties/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UpdatePropertyGroupArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UpdatePropertyGroupArg$Serializer;

    .line 1885
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;

    move-object v3, p1

    .line 1880
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    return-void

    .line 1888
    :catch_0
    move-exception v8

    .line 1889
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/UpdatePropertiesErrorException;

    const-string v2, "2/files/properties/update"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/UpdatePropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/UpdatePropertiesError;)V

    throw v1
.end method

.method public propertiesUpdate(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/PropertyGroupUpdate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/UpdatePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1908
    .local p2, "updatePropertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/PropertyGroupUpdate;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/UpdatePropertyGroupArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/UpdatePropertyGroupArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1909
    .local v0, "_arg":Lcom/dropbox/core/v2/files/UpdatePropertyGroupArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesUpdate(Lcom/dropbox/core/v2/files/UpdatePropertyGroupArg;)V

    .line 1910
    return-void
.end method

.method restore(Lcom/dropbox/core/v2/files/RestoreArg;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/RestoreArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RestoreErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1922
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/restore"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RestoreArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RestoreArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RestoreError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1930
    :catch_0
    move-exception v8

    .line 1931
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/RestoreErrorException;

    const-string v2, "2/files/restore"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RestoreErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RestoreError;)V

    throw v1
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RestoreErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1947
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RestoreArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    .local v0, "_arg":Lcom/dropbox/core/v2/files/RestoreArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->restore(Lcom/dropbox/core/v2/files/RestoreArg;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v1

    return-object v1
.end method

.method saveUrl(Lcom/dropbox/core/v2/files/SaveUrlArg;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/SaveUrlArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveUrlErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1963
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/save_url"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/SaveUrlArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1971
    :catch_0
    move-exception v8

    .line 1972
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/SaveUrlErrorException;

    const-string v2, "2/files/save_url"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/SaveUrlErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SaveUrlError;)V

    throw v1
.end method

.method public saveUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveUrlErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1989
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/SaveUrlArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    .local v0, "_arg":Lcom/dropbox/core/v2/files/SaveUrlArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->saveUrl(Lcom/dropbox/core/v2/files/SaveUrlArg;)Lcom/dropbox/core/v2/files/SaveUrlResult;

    move-result-object v1

    return-object v1
.end method

.method saveUrlCheckJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/async/PollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2006
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/save_url/check_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2014
    :catch_0
    move-exception v8

    .line 2015
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string v2, "2/files/save_url/check_job_status"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public saveUrlCheckJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 2
    .param p1, "asyncJobId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2031
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 2032
    .local v0, "_arg":Lcom/dropbox/core/v2/async/PollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->saveUrlCheckJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object v1

    return-object v1
.end method

.method search(Lcom/dropbox/core/v2/files/SearchArg;)Lcom/dropbox/core/v2/files/SearchResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/SearchArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2046
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/search"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SearchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/SearchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SearchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2054
    :catch_0
    move-exception v8

    .line 2055
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/files/SearchErrorException;

    const-string v2, "2/files/search"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SearchError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/SearchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SearchError;)V

    throw v1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2078
    new-instance v0, Lcom/dropbox/core/v2/files/SearchArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/SearchArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    .local v0, "_arg":Lcom/dropbox/core/v2/files/SearchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->search(Lcom/dropbox/core/v2/files/SearchArg;)Lcom/dropbox/core/v2/files/SearchResult;

    move-result-object v1

    return-object v1
.end method

.method public searchBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 2101
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/SearchArg;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchArg$Builder;

    move-result-object v0

    .line 2102
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/SearchArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/SearchBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/SearchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/SearchArg$Builder;)V

    return-object v1
.end method

.method upload(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadUploader;
    .locals 7
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/CommitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CommitInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfo$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v6

    .line 2123
    .local v6, "_uploader":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    new-instance v0, Lcom/dropbox/core/v2/files/UploadUploader;

    invoke-direct {v0, v6}, Lcom/dropbox/core/v2/files/UploadUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;)V

    return-object v0
.end method

.method public upload(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadUploader;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2144
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfo;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo;-><init>(Ljava/lang/String;)V

    .line 2145
    .local v0, "_arg":Lcom/dropbox/core/v2/files/CommitInfo;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->upload(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadUploader;

    move-result-object v1

    return-object v1
.end method

.method public uploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2164
    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfo;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    move-result-object v0

    .line 2165
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    new-instance v1, Lcom/dropbox/core/v2/files/UploadBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/UploadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfo$Builder;)V

    return-object v1
.end method

.method uploadSessionAppend(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;
    .locals 7
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/UploadSessionCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/append"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionCursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionCursor$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v6

    .line 2185
    .local v6, "_uploader":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;

    invoke-direct {v0, v6}, Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;)V

    return-object v0
.end method

.method public uploadSessionAppend(Ljava/lang/String;J)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2210
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionCursor;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/UploadSessionCursor;-><init>(Ljava/lang/String;J)V

    .line 2211
    .local v0, "_arg":Lcom/dropbox/core/v2/files/UploadSessionCursor;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionAppend(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;

    move-result-object v1

    return-object v1
.end method

.method uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionAppendArg;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 7
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/UploadSessionAppendArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/append_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v6

    .line 2232
    .local v6, "_uploader":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    invoke-direct {v0, v6}, Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;)V

    return-object v0
.end method

.method public uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 2
    .param p1, "cursor"    # Lcom/dropbox/core/v2/files/UploadSessionCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2252
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;)V

    .line 2253
    .local v0, "_arg":Lcom/dropbox/core/v2/files/UploadSessionAppendArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionAppendArg;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    move-result-object v1

    return-object v1
.end method

.method public uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 2
    .param p1, "cursor"    # Lcom/dropbox/core/v2/files/UploadSessionCursor;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2274
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)V

    .line 2275
    .local v0, "_arg":Lcom/dropbox/core/v2/files/UploadSessionAppendArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionAppendArg;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    move-result-object v1

    return-object v1
.end method

.method public uploadSessionFinish(Lcom/dropbox/core/v2/files/UploadSessionCursor;Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;
    .locals 2
    .param p1, "cursor"    # Lcom/dropbox/core/v2/files/UploadSessionCursor;
    .param p2, "commit"    # Lcom/dropbox/core/v2/files/CommitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2315
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Lcom/dropbox/core/v2/files/CommitInfo;)V

    .line 2316
    .local v0, "_arg":Lcom/dropbox/core/v2/files/UploadSessionFinishArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionFinish(Lcom/dropbox/core/v2/files/UploadSessionFinishArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;

    move-result-object v1

    return-object v1
.end method

.method uploadSessionFinish(Lcom/dropbox/core/v2/files/UploadSessionFinishArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;
    .locals 7
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/UploadSessionFinishArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/finish"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionFinishArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishArg$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v6

    .line 2296
    .local v6, "_uploader":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;

    invoke-direct {v0, v6}, Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;)V

    return-object v0
.end method

.method uploadSessionFinishBatch(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2353
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/finish_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;

    .line 2359
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 2353
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2361
    :catch_0
    move-exception v8

    .line 2362
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"upload_session/finish_batch\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method public uploadSessionFinishBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/UploadSessionFinishArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2401
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/UploadSessionFinishArg;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;-><init>(Ljava/util/List;)V

    .line 2402
    .local v0, "_arg":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionFinishBatch(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    move-result-object v1

    return-object v1
.end method

.method uploadSessionFinishBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/async/PollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2419
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/finish_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2427
    :catch_0
    move-exception v8

    .line 2428
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string v2, "2/files/upload_session/finish_batch/check"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public uploadSessionFinishBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 2
    .param p1, "asyncJobId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2445
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 2446
    .local v0, "_arg":Lcom/dropbox/core/v2/async/PollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionFinishBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v1

    return-object v1
.end method

.method public uploadSessionStart()Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2493
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionStartArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionStartArg;-><init>()V

    .line 2494
    .local v0, "_arg":Lcom/dropbox/core/v2/files/UploadSessionStartArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionStart(Lcom/dropbox/core/v2/files/UploadSessionStartArg;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    move-result-object v1

    return-object v1
.end method

.method uploadSessionStart(Lcom/dropbox/core/v2/files/UploadSessionStartArg;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 7
    .param p1, "arg"    # Lcom/dropbox/core/v2/files/UploadSessionStartArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/files/upload_session/start"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionStartArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionStartArg$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v6

    .line 2473
    .local v6, "_uploader":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    invoke-direct {v0, v6}, Lcom/dropbox/core/v2/files/UploadSessionStartUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;)V

    return-object v0
.end method

.method public uploadSessionStart(Z)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 2
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2516
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionStartArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionStartArg;-><init>(Z)V

    .line 2517
    .local v0, "_arg":Lcom/dropbox/core/v2/files/UploadSessionStartArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionStart(Lcom/dropbox/core/v2/files/UploadSessionStartArg;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    move-result-object v1

    return-object v1
.end method
