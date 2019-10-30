.class final Lcom/dropbox/core/DbxRequestUtil$2;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "DbxRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
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
.field final synthetic val$handler:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

.field final synthetic val$headers:Ljava/util/List;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$params:[Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$requestConfig:Lcom/dropbox/core/DbxRequestConfig;

.field final synthetic val$sdkUserAgentIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iput-object p2, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$sdkUserAgentIdentifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$host:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$params:[Ljava/lang/String;

    iput-object p6, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$headers:Ljava/util/List;

    iput-object p7, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$handler:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7
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
    .line 389
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$sdkUserAgentIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$params:[Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$headers:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestUtil;->startPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v6

    .line 390
    .local v6, "response":Lcom/dropbox/core/http/HttpRequestor$Response;
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestUtil$2;->val$handler:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

    invoke-static {v6, v0}, Lcom/dropbox/core/DbxRequestUtil;->finishResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
