.class Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
.super Ljava/lang/Object;
.source "GetSharedLinkMetadataArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;,
        Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;
    }
.end annotation


# instance fields
.field protected final linkPassword:Ljava/lang/String;

.field protected final path:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "linkPassword"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->url:Ljava/lang/String;

    .line 45
    if-eqz p2, :cond_1

    .line 46
    const-string v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    if-ne p1, p0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 193
    check-cast v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    .line 194
    .local v0, "other":Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->url:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    :cond_5
    move v1, v2

    .line 200
    goto :goto_0
.end method

.method public getLinkPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 178
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 183
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
