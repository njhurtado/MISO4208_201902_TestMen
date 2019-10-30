.class public Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
.super Ljava/lang/Object;
.source "InsufficientQuotaAmounts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;
    }
.end annotation


# instance fields
.field protected final spaceLeft:J

.field protected final spaceNeeded:J

.field protected final spaceShortage:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1
    .param p1, "spaceNeeded"    # J
    .param p3, "spaceShortage"    # J
    .param p5, "spaceLeft"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    .line 35
    iput-wide p3, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    .line 36
    iput-wide p5, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    .line 37
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

    .line 90
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

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    .line 84
    .local v0, "other":Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    :cond_3
    move v1, v2

    .line 90
    goto :goto_0
.end method

.method public getSpaceLeft()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    return-wide v0
.end method

.method public getSpaceNeeded()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    return-wide v0
.end method

.method public getSpaceShortage()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 68
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 73
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
