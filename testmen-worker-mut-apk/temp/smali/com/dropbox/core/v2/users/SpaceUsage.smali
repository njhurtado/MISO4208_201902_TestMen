.class public Lcom/dropbox/core/v2/users/SpaceUsage;
.super Ljava/lang/Object;
.source "SpaceUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;
    }
.end annotation


# instance fields
.field protected final allocation:Lcom/dropbox/core/v2/users/SpaceAllocation;

.field protected final used:J


# direct methods
.method public constructor <init>(JLcom/dropbox/core/v2/users/SpaceAllocation;)V
    .locals 3
    .param p1, "used"    # J
    .param p3, "allocation"    # Lcom/dropbox/core/v2/users/SpaceAllocation;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->used:J

    .line 38
    if-nez p3, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'allocation\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->allocation:Lcom/dropbox/core/v2/users/SpaceAllocation;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/dropbox/core/v2/users/SpaceUsage;

    .line 79
    .local v0, "other":Lcom/dropbox/core/v2/users/SpaceUsage;
    iget-wide v4, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->used:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/users/SpaceUsage;->used:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->allocation:Lcom/dropbox/core/v2/users/SpaceAllocation;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/SpaceUsage;->allocation:Lcom/dropbox/core/v2/users/SpaceAllocation;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->allocation:Lcom/dropbox/core/v2/users/SpaceAllocation;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/SpaceUsage;->allocation:Lcom/dropbox/core/v2/users/SpaceAllocation;

    .line 80
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/SpaceAllocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/users/SpaceUsage;
    :cond_3
    move v1, v2

    .line 84
    goto :goto_0
.end method

.method public getAllocation()Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->allocation:Lcom/dropbox/core/v2/users/SpaceAllocation;

    return-object v0
.end method

.method public getUsed()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->used:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 64
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->used:J

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceUsage;->allocation:Lcom/dropbox/core/v2/users/SpaceAllocation;

    aput-object v3, v1, v2

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
