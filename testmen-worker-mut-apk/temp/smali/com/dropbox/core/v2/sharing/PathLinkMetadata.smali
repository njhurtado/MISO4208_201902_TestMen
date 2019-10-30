.class public Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/LinkMetadata;
.source "PathLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;
    }
.end annotation


# instance fields
.field protected final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "visibility"    # Lcom/dropbox/core/v2/sharing/Visibility;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/lang/String;Ljava/util/Date;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "visibility"    # Lcom/dropbox/core/v2/sharing/Visibility;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "expires"    # Ljava/util/Date;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p4}, Lcom/dropbox/core/v2/sharing/LinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    .line 42
    if-nez p3, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-ne p1, p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    .line 117
    .local v0, "other":Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 118
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/Visibility;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    .line 120
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    :cond_6
    move v1, v2

    .line 124
    goto :goto_0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 102
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 105
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/LinkMetadata;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 106
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
