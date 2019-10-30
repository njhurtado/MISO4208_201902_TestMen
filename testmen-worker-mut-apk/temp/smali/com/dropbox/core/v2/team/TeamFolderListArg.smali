.class Lcom/dropbox/core/v2/team/TeamFolderListArg;
.super Ljava/lang/Object;
.source "TeamFolderListArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;
    }
.end annotation


# instance fields
.field protected final limit:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderListArg;-><init>(J)V

    .line 48
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "limit"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-wide p1, p0, Lcom/dropbox/core/v2/team/TeamFolderListArg;->limit:J

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderListArg;

    .line 76
    .local v0, "other":Lcom/dropbox/core/v2/team/TeamFolderListArg;
    iget-wide v4, p0, Lcom/dropbox/core/v2/team/TeamFolderListArg;->limit:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/team/TeamFolderListArg;->limit:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/TeamFolderListArg;
    :cond_2
    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/TeamFolderListArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 62
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/team/TeamFolderListArg;->limit:J

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 65
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
