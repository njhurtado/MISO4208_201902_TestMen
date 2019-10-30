.class Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "ListUsersOnFolderArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;
    }
.end annotation


# instance fields
.field protected final limit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "docId"    # Ljava/lang/String;

    .prologue
    .line 56
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;-><init>(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is smaller than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    const/16 v0, 0x3e8

    if-le p2, v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is larger than 1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput p2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->limit:I

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;

    .line 95
    .local v0, "other":Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->docId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->limit:I

    iget v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->limit:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
    :cond_4
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->limit:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;->limit:I

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 83
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 84
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
