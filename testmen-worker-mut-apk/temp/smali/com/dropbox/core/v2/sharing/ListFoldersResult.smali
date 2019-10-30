.class public Lcom/dropbox/core/v2/sharing/ListFoldersResult;
.super Ljava/lang/Object;
.source "ListFoldersResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/sharing/ListFoldersResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .line 55
    .local v0, "x":Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    if-nez v0, :cond_1

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->entries:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->cursor:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    .line 121
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->entries:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->entries:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->cursor:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->cursor:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->cursor:Ljava/lang/String;

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :cond_4
    move v1, v2

    .line 126
    goto :goto_0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->entries:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 106
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->entries:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;->cursor:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 110
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
