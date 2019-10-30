.class public Lcom/dropbox/core/v2/files/ListFolderResult;
.super Ljava/lang/Object;
.source "ListFolderResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field protected final hasMore:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/Metadata;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/Metadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;

    .line 46
    .local v0, "x":Lcom/dropbox/core/v2/files/Metadata;
    if-nez v0, :cond_1

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "x":Lcom/dropbox/core/v2/files/Metadata;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->entries:Ljava/util/List;

    .line 51
    if-nez p2, :cond_3

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'cursor\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'cursor\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->cursor:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->hasMore:Z

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderResult;

    .line 109
    .local v0, "other":Lcom/dropbox/core/v2/files/ListFolderResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderResult;->entries:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderResult;->entries:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderResult;->cursor:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderResult;->cursor:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->hasMore:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/ListFolderResult;->hasMore:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/ListFolderResult;
    :cond_5
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/Metadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->hasMore:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 93
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->entries:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->cursor:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderResult;->hasMore:Z

    .line 96
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
