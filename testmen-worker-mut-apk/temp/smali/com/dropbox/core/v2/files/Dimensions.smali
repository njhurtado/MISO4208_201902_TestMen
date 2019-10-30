.class public Lcom/dropbox/core/v2/files/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/Dimensions$Serializer;
    }
.end annotation


# instance fields
.field protected final height:J

.field protected final width:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "height"    # J
    .param p3, "width"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/dropbox/core/v2/files/Dimensions;->height:J

    .line 35
    iput-wide p3, p0, Lcom/dropbox/core/v2/files/Dimensions;->width:J

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p1, p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/dropbox/core/v2/files/Dimensions;

    .line 73
    .local v0, "other":Lcom/dropbox/core/v2/files/Dimensions;
    iget-wide v4, p0, Lcom/dropbox/core/v2/files/Dimensions;->height:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/files/Dimensions;->height:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/Dimensions;->width:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/files/Dimensions;->width:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/Dimensions;
    :cond_3
    move v1, v2

    .line 78
    goto :goto_0
.end method

.method public getHeight()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/dropbox/core/v2/files/Dimensions;->height:J

    return-wide v0
.end method

.method public getWidth()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/dropbox/core/v2/files/Dimensions;->width:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 58
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/Dimensions;->height:J

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/Dimensions;->width:J

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 62
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
