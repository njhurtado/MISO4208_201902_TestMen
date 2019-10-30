.class Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
.super Lcom/dropbox/core/v2/files/CommitInfo;
.source "CommitInfoWithProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;,
        Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    }
.end annotation


# instance fields
.field protected final propertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 81
    sget-object v2, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;ZLjava/util/List;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;ZLjava/util/List;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/dropbox/core/v2/files/WriteMode;
    .param p3, "autorename"    # Z
    .param p4, "clientModified"    # Ljava/util/Date;
    .param p5, "mute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/WriteMode;",
            "Z",
            "Ljava/util/Date;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p6, "propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/v2/files/CommitInfo;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;Z)V

    .line 58
    if-eqz p6, :cond_1

    .line 59
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyGroup;

    .line 60
    .local v0, "x":Lcom/dropbox/core/v2/properties/PropertyGroup;
    if-nez v0, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'propertyGroups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "x":Lcom/dropbox/core/v2/properties/PropertyGroup;
    :cond_1
    iput-object p6, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    .line 66
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    if-ne p1, p0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 301
    check-cast v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    .line 302
    .local v0, "other":Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    .line 303
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->autorename:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->autorename:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    .line 305
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mute:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mute:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    .line 307
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    :cond_6
    move v1, v2

    .line 311
    goto :goto_0
.end method

.method public getAutorename()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->autorename:Z

    return v0
.end method

.method public getClientModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMode()Lcom/dropbox/core/v2/files/WriteMode;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mute:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 287
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 290
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/files/CommitInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 291
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    sget-object v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
