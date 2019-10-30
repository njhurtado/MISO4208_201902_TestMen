.class public Lcom/dropbox/core/v2/paper/DocsListBuilder;
.super Ljava/lang/Object;
.source "DocsListBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

.field private final _client:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;)V
    .locals 2
    .param p1, "_client"    # Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;
    .param p2, "_builder"    # Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

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
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->_client:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->build()Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    move-result-object v0

    .line 124
    .local v0, "arg_":Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->_client:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsList(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object v1

    return-object v1
.end method

.method public withFilterBy(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;)Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 1
    .param p1, "filterBy"    # Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->withFilterBy(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    .line 56
    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 1
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    .line 116
    return-object p0
.end method

.method public withSortBy(Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;)Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 1
    .param p1, "sortBy"    # Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->withSortBy(Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    .line 76
    return-object p0
.end method

.method public withSortOrder(Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;)Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 1
    .param p1, "sortOrder"    # Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DocsListBuilder;->_builder:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;->withSortOrder(Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    .line 96
    return-object p0
.end method
