.class Lcom/dropbox/core/v2/files/ListFolderArg;
.super Ljava/lang/Object;
.source "ListFolderArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;,
        Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    }
.end annotation


# instance fields
.field protected final includeDeleted:Z

.field protected final includeHasExplicitSharedMembers:Z

.field protected final includeMediaInfo:Z

.field protected final path:Ljava/lang/String;

.field protected final recursive:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 76
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;ZZZZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .param p3, "includeMediaInfo"    # Z
    .param p4, "includeDeleted"    # Z
    .param p5, "includeHasExplicitSharedMembers"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    const-string v0, "(/(.|[\\r\\n])*)?|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    .line 58
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    .line 59
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    .line 60
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    .line 61
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    if-ne p1, p0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 292
    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    .line 293
    .local v0, "other":Lcom/dropbox/core/v2/files/ListFolderArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/ListFolderArg;
    :cond_4
    move v1, v2

    .line 301
    goto :goto_0
.end method

.method public getIncludeDeleted()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    return v0
.end method

.method public getIncludeHasExplicitSharedMembers()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    return v0
.end method

.method public getIncludeMediaInfo()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 275
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    .line 277
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    .line 278
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    .line 279
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    .line 280
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 275
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 282
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
