.class Lcom/dropbox/core/v2/sharing/GetMetadataArgs;
.super Ljava/lang/Object;
.source "GetMetadataArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;
    }
.end annotation


# instance fields
.field protected final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    const-string v1, "[-_0-9a-zA-Z:]+"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->sharedFolderId:Ljava/lang/String;

    .line 46
    if-eqz p2, :cond_3

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 48
    .local v0, "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    if-nez v0, :cond_2

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'actions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->actions:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-ne p1, p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 107
    check-cast v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;

    .line 108
    .local v0, "other":Lcom/dropbox/core/v2/sharing/GetMetadataArgs;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->actions:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->actions:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->actions:Ljava/util/List;

    .line 109
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/GetMetadataArgs;
    :cond_4
    move v1, v2

    .line 113
    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 93
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;->actions:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 97
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
