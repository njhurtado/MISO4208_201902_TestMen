.class public Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
.super Ljava/lang/Object;
.source "TeamSpaceAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;
    }
.end annotation


# instance fields
.field protected final allocated:J

.field protected final used:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "used"    # J
    .param p3, "allocated"    # J

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    .line 31
    iput-wide p3, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    .line 69
    .local v0, "other":Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    iget-wide v4, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    :cond_3
    move v1, v2

    .line 74
    goto :goto_0
.end method

.method public getAllocated()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    return-wide v0
.end method

.method public getUsed()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 54
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 54
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 58
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
