.class Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "ListUsersOnPaperDocArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;,
        Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
    }
.end annotation


# instance fields
.field protected final filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

.field protected final limit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;

    .prologue
    .line 65
    const/16 v0, 0x3e8

    sget-object v1, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;-><init>(Ljava/lang/String;ILcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)V
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "filterBy"    # Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is smaller than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const/16 v0, 0x3e8

    if-le p2, v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is larger than 1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput p2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->limit:I

    .line 48
    if-nez p3, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'filterBy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    .line 52
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
    .locals 1
    .param p0, "docId"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    if-ne p1, p0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 216
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 217
    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    .line 218
    .local v0, "other":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->docId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->limit:I

    iget v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->limit:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    .line 220
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    :cond_4
    move v1, v2

    .line 224
    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterBy()Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->limit:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 202
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->limit:I

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    aput-object v3, v1, v2

    .line 202
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 206
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 207
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
