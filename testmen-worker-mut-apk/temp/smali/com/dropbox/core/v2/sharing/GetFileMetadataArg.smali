.class Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;
.super Ljava/lang/Object;
.source "GetFileMetadataArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;
    }
.end annotation


# instance fields
.field protected final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final file:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FileAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'file\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'file\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1
    const-string v1, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'file\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->file:Ljava/lang/String;

    .line 52
    if-eqz p2, :cond_4

    .line 53
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileAction;

    .line 54
    .local v0, "x":Lcom/dropbox/core/v2/sharing/FileAction;
    if-nez v0, :cond_3

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'actions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/FileAction;
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->actions:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p1, p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;

    .line 113
    .local v0, "other":Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->file:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->file:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->file:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->file:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->actions:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->actions:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->actions:Ljava/util/List;

    .line 114
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;
    :cond_4
    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->file:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 98
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->file:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;->actions:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 102
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
