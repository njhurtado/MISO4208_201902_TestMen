.class public Lcom/dropbox/core/v2/files/SearchMatch;
.super Ljava/lang/Object;
.source "SearchMatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SearchMatch$Serializer;
    }
.end annotation


# instance fields
.field protected final matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

.field protected final metadata:Lcom/dropbox/core/v2/files/Metadata;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/SearchMatchType;Lcom/dropbox/core/v2/files/Metadata;)V
    .locals 2
    .param p1, "matchType"    # Lcom/dropbox/core/v2/files/SearchMatchType;
    .param p2, "metadata"    # Lcom/dropbox/core/v2/files/Metadata;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'matchType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchMatch;->matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

    .line 38
    if-nez p2, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'metadata\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SearchMatch;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/dropbox/core/v2/files/SearchMatch;

    .line 79
    .local v0, "other":Lcom/dropbox/core/v2/files/SearchMatch;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchMatch;->matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchMatch;->matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchMatch;->matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchMatch;->matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/SearchMatchType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchMatch;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchMatch;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchMatch;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchMatch;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    .line 80
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/SearchMatch;
    :cond_4
    move v1, v2

    .line 84
    goto :goto_0
.end method

.method public getMatchType()Lcom/dropbox/core/v2/files/SearchMatchType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchMatch;->matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

    return-object v0
.end method

.method public getMetadata()Lcom/dropbox/core/v2/files/Metadata;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchMatch;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 64
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchMatch;->matchType:Lcom/dropbox/core/v2/files/SearchMatchType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchMatch;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMatch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMatch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SearchMatch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
