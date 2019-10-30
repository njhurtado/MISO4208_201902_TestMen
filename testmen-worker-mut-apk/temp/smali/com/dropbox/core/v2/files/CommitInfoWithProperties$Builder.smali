.class public Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
.super Lcom/dropbox/core/v2/files/CommitInfo$Builder;
.source "CommitInfoWithProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected propertyGroups:Ljava/util/List;
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
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->propertyGroups:Ljava/util/List;

    .line 175
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/files/CommitInfo;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->build()Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    .locals 7

    .prologue
    .line 281
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->autorename:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->clientModified:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->mute:Z

    iget-object v6, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->propertyGroups:Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;ZLjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0
    .param p1, "autorename"    # Ljava/lang/Boolean;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 235
    return-object p0
.end method

.method public bridge synthetic withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0
    .param p1, "clientModified"    # Ljava/util/Date;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 252
    return-object p0
.end method

.method public bridge synthetic withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0
    .param p1, "mode"    # Lcom/dropbox/core/v2/files/WriteMode;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 217
    return-object p0
.end method

.method public bridge synthetic withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0
    .param p1, "mute"    # Ljava/lang/Boolean;

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    .line 271
    return-object p0
.end method

.method public withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;)",
            "Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    if-eqz p1, :cond_1

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyGroup;

    .line 191
    .local v0, "x":Lcom/dropbox/core/v2/properties/PropertyGroup;
    if-nez v0, :cond_0

    .line 192
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'propertyGroups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v0    # "x":Lcom/dropbox/core/v2/properties/PropertyGroup;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->propertyGroups:Ljava/util/List;

    .line 197
    return-object p0
.end method
