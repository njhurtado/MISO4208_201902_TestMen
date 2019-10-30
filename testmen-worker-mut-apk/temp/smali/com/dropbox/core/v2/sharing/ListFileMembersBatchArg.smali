.class Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;
.super Ljava/lang/Object;
.source "ListFileMembersBatchArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;
    }
.end annotation


# instance fields
.field protected final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final limit:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;-><init>(Ljava/util/List;J)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 4
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'files\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List \'files\' has more than 100 items"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'files\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Stringan item in list \'files\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_4
    const-string v2, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Stringan item in list \'files\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "x":Ljava/lang/String;
    :cond_5
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->files:Ljava/util/List;

    .line 59
    const-wide/16 v2, 0x14

    cmp-long v1, p2, v2

    if-lez v1, :cond_6

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is larger than 20L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_6
    iput-wide p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->limit:J

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 117
    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;

    .line 118
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->files:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->files:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->files:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->files:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->limit:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->limit:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;
    :cond_4
    move v1, v2

    .line 123
    goto :goto_0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->files:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 103
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->files:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;->limit:J

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 103
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
