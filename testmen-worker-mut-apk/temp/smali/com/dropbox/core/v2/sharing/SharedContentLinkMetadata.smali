.class public Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
.source "SharedContentLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;
    }
.end annotation


# instance fields
.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;)V
    .locals 7
    .param p2, "currentAudience"    # Lcom/dropbox/core/v2/sharing/LinkAudience;
    .param p4, "passwordProtected"    # Z
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    .local p3, "linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;Ljava/util/Date;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;Ljava/util/Date;)V
    .locals 6
    .param p2, "currentAudience"    # Lcom/dropbox/core/v2/sharing/LinkAudience;
    .param p4, "passwordProtected"    # Z
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "expiry"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    .local p3, "linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/util/Date;)V

    .line 54
    if-nez p5, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    if-ne p1, p0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 160
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 161
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 162
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/LinkAudience;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    .line 163
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->passwordProtected:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->passwordProtected:Z

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    .line 166
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    :cond_7
    move v1, v2

    .line 170
    goto :goto_0
.end method

.method public getAudienceOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentAudience()Lcom/dropbox/core/v2/sharing/LinkAudience;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-object v0
.end method

.method public getExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    return-object v0
.end method

.method public getLinkPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getPasswordProtected()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->passwordProtected:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 146
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 149
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 150
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
