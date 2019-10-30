.class final Lcom/dropbox/core/DbxRequestUtil$1;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "DbxRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/DbxRequestUtil;->doGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker",
        "<TT;",
        "Lcom/dropbox/core/DbxException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$handler:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

.field final synthetic val$headers:Ljava/util/List;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$params:[Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$requestConfig:Lcom/dropbox/core/DbxRequestConfig;

.field final synthetic val$sdkUserAgentIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iput-object p2, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$accessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$sdkUserAgentIdentifier:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$host:Ljava/lang/String;

    iput-object p5, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$path:Ljava/lang/String;

    iput-object p6, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$params:[Ljava/lang/String;

    iput-object p7, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$headers:Ljava/util/List;

    iput-object p8, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$handler:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$sdkUserAgentIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$host:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$params:[Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$headers:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->startGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v8

    .line 351
    .local v8, "response":Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestUtil$1;->val$handler:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

    invoke-virtual {v0, v8}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 354
    :try_start_1
    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    return-object v0

    .line 355
    :catch_0
    move-exception v7

    .line 357
    .local v7, "ex":Ljava/io/IOException;
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, v7}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 353
    .end local v7    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 354
    :try_start_2
    invoke-virtual {v8}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 357
    throw v0

    .line 355
    :catch_1
    move-exception v7

    .line 357
    .restart local v7    # "ex":Ljava/io/IOException;
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, v7}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
