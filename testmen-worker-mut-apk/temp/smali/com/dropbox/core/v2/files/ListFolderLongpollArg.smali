.class Lcom/dropbox/core/v2/files/ListFolderLongpollArg;
.super Ljava/lang/Object;
.source "ListFolderLongpollArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;

    .prologue
    .line 75
    const-wide/16 v0, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;-><init>(Ljava/lang/String;J)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'cursor\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'cursor\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->cursor:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x1e

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'timeout\' is smaller than 30L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    const-wide/16 v0, 0x1e0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'timeout\' is larger than 480L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    iput-wide p2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->timeout:J

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ne p1, p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;

    .line 120
    .local v0, "other":Lcom/dropbox/core/v2/files/ListFolderLongpollArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->cursor:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->cursor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->timeout:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->timeout:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/ListFolderLongpollArg;
    :cond_4
    move v1, v2

    .line 125
    goto :goto_0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->timeout:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 105
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->cursor:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->timeout:J

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 109
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
