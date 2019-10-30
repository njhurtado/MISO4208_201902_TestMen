.class Lcom/dropbox/core/v2/files/GetMetadataArg;
.super Ljava/lang/Object;
.source "GetMetadataArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;,
        Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    }
.end annotation


# instance fields
.field protected final includeDeleted:Z

.field protected final includeHasExplicitSharedMembers:Z

.field protected final includeMediaInfo:Z

.field protected final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/files/GetMetadataArg;-><init>(Ljava/lang/String;ZZZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "includeMediaInfo"    # Z
    .param p3, "includeDeleted"    # Z
    .param p4, "includeHasExplicitSharedMembers"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const-string v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->path:Ljava/lang/String;

    .line 54
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeMediaInfo:Z

    .line 55
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeDeleted:Z

    .line 56
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeHasExplicitSharedMembers:Z

    .line 57
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    if-ne p1, p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 251
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 252
    check-cast v0, Lcom/dropbox/core/v2/files/GetMetadataArg;

    .line 253
    .local v0, "other":Lcom/dropbox/core/v2/files/GetMetadataArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/GetMetadataArg;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/GetMetadataArg;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeMediaInfo:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeMediaInfo:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeDeleted:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeDeleted:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeHasExplicitSharedMembers:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeHasExplicitSharedMembers:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/GetMetadataArg;
    :cond_4
    move v1, v2

    .line 260
    goto :goto_0
.end method

.method public getIncludeDeleted()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeDeleted:Z

    return v0
.end method

.method public getIncludeHasExplicitSharedMembers()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeHasExplicitSharedMembers:Z

    return v0
.end method

.method public getIncludeMediaInfo()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeMediaInfo:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 236
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeMediaInfo:Z

    .line 238
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeDeleted:Z

    .line 239
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->includeHasExplicitSharedMembers:Z

    .line 240
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 236
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
