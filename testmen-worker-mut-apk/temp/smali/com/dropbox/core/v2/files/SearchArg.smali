.class Lcom/dropbox/core/v2/files/SearchArg;
.super Ljava/lang/Object;
.source "SearchArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SearchArg$Serializer;,
        Lcom/dropbox/core/v2/files/SearchArg$Builder;
    }
.end annotation


# instance fields
.field protected final maxResults:J

.field protected final mode:Lcom/dropbox/core/v2/files/SearchMode;

.field protected final path:Ljava/lang/String;

.field protected final query:Ljava/lang/String;

.field protected final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 93
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    sget-object v8, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/v2/files/SearchArg;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/files/SearchMode;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/files/SearchMode;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "start"    # J
    .param p5, "maxResults"    # J
    .param p7, "mode"    # Lcom/dropbox/core/v2/files/SearchMode;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const-string v0, "(/(.|[\\r\\n])*)?|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    .line 58
    if-nez p2, :cond_2

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'query\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    .line 62
    iput-wide p3, p0, Lcom/dropbox/core/v2/files/SearchArg;->start:J

    .line 63
    const-wide/16 v0, 0x1

    cmp-long v0, p5, v0

    if-gez v0, :cond_3

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'maxResults\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    const-wide/16 v0, 0x3e8

    cmp-long v0, p5, v0

    if-lez v0, :cond_4

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'maxResults\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    iput-wide p5, p0, Lcom/dropbox/core/v2/files/SearchArg;->maxResults:J

    .line 70
    if-nez p7, :cond_5

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'mode\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_5
    iput-object p7, p0, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    .line 74
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchArg$Builder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lcom/dropbox/core/v2/files/SearchArg$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/SearchArg$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    if-ne p1, p0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 305
    check-cast v0, Lcom/dropbox/core/v2/files/SearchArg;

    .line 306
    .local v0, "other":Lcom/dropbox/core/v2/files/SearchArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    .line 307
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-wide v4, p0, Lcom/dropbox/core/v2/files/SearchArg;->start:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/files/SearchArg;->start:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/SearchArg;->maxResults:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/files/SearchArg;->maxResults:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    .line 310
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/SearchMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/SearchArg;
    :cond_5
    move v1, v2

    .line 314
    goto :goto_0
.end method

.method public getMaxResults()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/dropbox/core/v2/files/SearchArg;->maxResults:J

    return-wide v0
.end method

.method public getMode()Lcom/dropbox/core/v2/files/SearchMode;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/dropbox/core/v2/files/SearchArg;->start:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 288
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/SearchArg;->start:J

    .line 291
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/SearchArg;->maxResults:J

    .line 292
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    aput-object v3, v1, v2

    .line 288
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 295
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
