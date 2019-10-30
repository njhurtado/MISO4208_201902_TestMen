.class Lcom/dropbox/core/v2/files/RelocationBatchArg;
.super Ljava/lang/Object;
.source "RelocationBatchArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;,
        Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    }
.end annotation


# instance fields
.field protected final allowSharedFolder:Z

.field protected final autorename:Z

.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
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
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/RelocationPath;>;"
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;ZZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZ)V
    .locals 3
    .param p2, "allowSharedFolder"    # Z
    .param p3, "autorename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/RelocationPath;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationPath;

    .line 50
    .local v0, "x":Lcom/dropbox/core/v2/files/RelocationPath;
    if-nez v0, :cond_1

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v0    # "x":Lcom/dropbox/core/v2/files/RelocationPath;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    .line 55
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    .line 56
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    .line 57
    return-void
.end method

.method public static newBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/RelocationPath;>;"
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-ne p1, p0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 226
    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    .line 227
    .local v0, "other":Lcom/dropbox/core/v2/files/RelocationBatchArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/RelocationBatchArg;
    :cond_4
    move v1, v2

    .line 233
    goto :goto_0
.end method

.method public getAllowSharedFolder()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    return v0
.end method

.method public getAutorename()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 211
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    .line 213
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    .line 214
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 211
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 216
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
