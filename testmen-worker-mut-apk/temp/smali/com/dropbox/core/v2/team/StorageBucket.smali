.class public Lcom/dropbox/core/v2/team/StorageBucket;
.super Ljava/lang/Object;
.source "StorageBucket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/StorageBucket$Serializer;
    }
.end annotation


# instance fields
.field protected final bucket:Ljava/lang/String;

.field protected final users:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "bucket"    # Ljava/lang/String;
    .param p2, "users"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'bucket\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/dropbox/core/v2/team/StorageBucket;

    .line 84
    .local v0, "other":Lcom/dropbox/core/v2/team/StorageBucket;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/StorageBucket;
    :cond_4
    move v1, v2

    .line 89
    goto :goto_0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 73
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/StorageBucket$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/StorageBucket$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
