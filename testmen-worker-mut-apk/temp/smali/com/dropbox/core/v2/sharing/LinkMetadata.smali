.class public Lcom/dropbox/core/v2/sharing/LinkMetadata;
.super Ljava/lang/Object;
.source "LinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;
    }
.end annotation


# instance fields
.field protected final expires:Ljava/util/Date;

.field protected final url:Ljava/lang/String;

.field protected final visibility:Lcom/dropbox/core/v2/sharing/Visibility;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "visibility"    # Lcom/dropbox/core/v2/sharing/Visibility;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/LinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "visibility"    # Lcom/dropbox/core/v2/sharing/Visibility;
    .param p3, "expires"    # Ljava/util/Date;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    .line 48
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'visibility\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 52
    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p1, p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 115
    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkMetadata;

    .line 116
    .local v0, "other":Lcom/dropbox/core/v2/sharing/LinkMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 117
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/Visibility;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    .line 118
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/LinkMetadata;
    :cond_5
    move v1, v2

    .line 122
    goto :goto_0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 100
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 105
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
