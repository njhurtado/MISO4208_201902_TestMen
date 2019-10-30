.class public Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/LinkMetadata;
.source "CollectionLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "visibility"    # Lcom/dropbox/core/v2/sharing/Visibility;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "visibility"    # Lcom/dropbox/core/v2/sharing/Visibility;
    .param p3, "expires"    # Ljava/util/Date;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/LinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p1, p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;

    .line 97
    .local v0, "other":Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 98
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/Visibility;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    .line 99
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;
    :cond_5
    move v1, v2

    .line 103
    goto :goto_0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
