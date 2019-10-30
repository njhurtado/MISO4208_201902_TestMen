.class public Lcom/dropbox/core/v2/files/ListFolderBuilder;
.super Ljava/lang/Object;
.source "ListFolderBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V
    .locals 2
    .param p1, "_client"    # Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
    .param p2, "_builder"    # Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->build()Lcom/dropbox/core/v2/files/ListFolderArg;

    move-result-object v0

    .line 109
    .local v0, "arg_":Lcom/dropbox/core/v2/files/ListFolderArg;
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolder(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v1

    return-object v1
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1
    .param p1, "includeDeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    .line 85
    return-object p0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1
    .param p1, "includeHasExplicitSharedMembers"    # Ljava/lang/Boolean;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    .line 101
    return-object p0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1
    .param p1, "includeMediaInfo"    # Ljava/lang/Boolean;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    .line 69
    return-object p0
.end method

.method public withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1
    .param p1, "recursive"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->_builder:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    .line 53
    return-object p0
.end method
