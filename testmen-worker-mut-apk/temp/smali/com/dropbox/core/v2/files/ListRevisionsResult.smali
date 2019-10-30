.class public Lcom/dropbox/core/v2/files/ListRevisionsResult;
.super Ljava/lang/Object;
.source "ListRevisionsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;
    }
.end annotation


# instance fields
.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field protected final isDeleted:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .locals 3
    .param p1, "isDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/FileMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    .line 37
    if-nez p2, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;

    .line 41
    .local v0, "x":Lcom/dropbox/core/v2/files/FileMetadata;
    if-nez v0, :cond_1

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "x":Lcom/dropbox/core/v2/files/FileMetadata;
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p1, p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/dropbox/core/v2/files/ListRevisionsResult;

    .line 83
    .local v0, "other":Lcom/dropbox/core/v2/files/ListRevisionsResult;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    .line 84
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/ListRevisionsResult;
    :cond_3
    move v1, v2

    .line 88
    goto :goto_0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 68
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    .line 69
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    aput-object v3, v1, v2

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
