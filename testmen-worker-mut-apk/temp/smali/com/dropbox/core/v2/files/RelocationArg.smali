.class Lcom/dropbox/core/v2/files/RelocationArg;
.super Lcom/dropbox/core/v2/files/RelocationPath;
.source "RelocationArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationArg$Serializer;,
        Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    }
.end annotation


# instance fields
.field protected final allowSharedFolder:Z

.field protected final autorename:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .param p3, "allowSharedFolder"    # Z
    .param p4, "autorename"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    .line 50
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    .line 51
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    .locals 1
    .param p0, "fromPath"    # Ljava/lang/String;
    .param p1, "toPath"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    if-ne p1, p0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 239
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 240
    check-cast v0, Lcom/dropbox/core/v2/files/RelocationArg;

    .line 241
    .local v0, "other":Lcom/dropbox/core/v2/files/RelocationArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/RelocationArg;
    :cond_5
    move v1, v2

    .line 248
    goto :goto_0
.end method

.method public getAllowSharedFolder()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    return v0
.end method

.method public getAutorename()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    return v0
.end method

.method public getFromPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    return-object v0
.end method

.method public getToPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 225
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    .line 226
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    .line 227
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 225
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 229
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/files/RelocationPath;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 230
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
