.class Lcom/dropbox/core/v2/files/ThumbnailArg;
.super Ljava/lang/Object;
.source "ThumbnailArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;,
        Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;
    }
.end annotation


# instance fields
.field protected final format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

.field protected final path:Ljava/lang/String;

.field protected final size:Lcom/dropbox/core/v2/files/ThumbnailSize;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/dropbox/core/v2/files/ThumbnailFormat;
    .param p3, "size"    # Lcom/dropbox/core/v2/files/ThumbnailSize;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    const-string v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    .line 50
    if-nez p2, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'format\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    .line 54
    if-nez p3, :cond_3

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'size\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 58
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;-><init>(Ljava/lang/String;)V

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

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 226
    check-cast v0, Lcom/dropbox/core/v2/files/ThumbnailArg;

    .line 227
    .local v0, "other":Lcom/dropbox/core/v2/files/ThumbnailArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    .line 228
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/ThumbnailFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 229
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/ThumbnailSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/ThumbnailArg;
    :cond_5
    move v1, v2

    .line 233
    goto :goto_0
.end method

.method public getFormat()Lcom/dropbox/core/v2/files/ThumbnailFormat;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/dropbox/core/v2/files/ThumbnailSize;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 211
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    aput-object v3, v1, v2

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
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
