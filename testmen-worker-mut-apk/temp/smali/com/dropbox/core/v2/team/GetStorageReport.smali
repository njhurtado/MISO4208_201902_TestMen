.class public Lcom/dropbox/core/v2/team/GetStorageReport;
.super Lcom/dropbox/core/v2/team/BaseDfbReport;
.source "GetStorageReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;
    }
.end annotation


# instance fields
.field protected final memberStorageMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/StorageBucket;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final sharedFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final totalUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final unsharedUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "startDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/StorageBucket;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "totalUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "sharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "unsharedUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "sharedFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p6, "memberStorageMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/dropbox/core/v2/team/StorageBucket;>;>;"
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/BaseDfbReport;-><init>(Ljava/lang/String;)V

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Required value for \'totalUsage\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 69
    .local v0, "x":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 70
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An item in list \'totalUsage\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    .end local v0    # "x":Ljava/lang/Long;
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->totalUsage:Ljava/util/List;

    .line 74
    if-nez p3, :cond_3

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Required value for \'sharedUsage\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 78
    .restart local v0    # "x":Ljava/lang/Long;
    if-nez v0, :cond_4

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An item in list \'sharedUsage\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    .end local v0    # "x":Ljava/lang/Long;
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedUsage:Ljava/util/List;

    .line 83
    if-nez p4, :cond_6

    .line 84
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Required value for \'unsharedUsage\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_6
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 87
    .restart local v0    # "x":Ljava/lang/Long;
    if-nez v0, :cond_7

    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An item in list \'unsharedUsage\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    .end local v0    # "x":Ljava/lang/Long;
    :cond_8
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->unsharedUsage:Ljava/util/List;

    .line 92
    if-nez p5, :cond_9

    .line 93
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Required value for \'sharedFolders\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_9
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 96
    .restart local v0    # "x":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An item in list \'sharedFolders\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v0    # "x":Ljava/lang/Long;
    :cond_b
    iput-object p5, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedFolders:Ljava/util/List;

    .line 101
    if-nez p6, :cond_c

    .line 102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Required value for \'memberStorageMap\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_c
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 105
    .local v1, "x":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/StorageBucket;>;"
    if-nez v1, :cond_e

    .line 106
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An item in list \'memberStorageMap\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/core/v2/team/StorageBucket;

    .line 109
    .local v2, "x1":Lcom/dropbox/core/v2/team/StorageBucket;
    if-nez v2, :cond_f

    .line 110
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An item in listan item in list \'memberStorageMap\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    .end local v1    # "x":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/StorageBucket;>;"
    .end local v2    # "x1":Lcom/dropbox/core/v2/team/StorageBucket;
    :cond_10
    iput-object p6, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->memberStorageMap:Ljava/util/List;

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-ne p1, p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 199
    check-cast v0, Lcom/dropbox/core/v2/team/GetStorageReport;

    .line 200
    .local v0, "other":Lcom/dropbox/core/v2/team/GetStorageReport;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->startDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->startDate:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->startDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->startDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->totalUsage:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->totalUsage:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->totalUsage:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->totalUsage:Ljava/util/List;

    .line 201
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedUsage:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedUsage:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedUsage:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedUsage:Ljava/util/List;

    .line 202
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->unsharedUsage:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->unsharedUsage:Ljava/util/List;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->unsharedUsage:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->unsharedUsage:Ljava/util/List;

    .line 203
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedFolders:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedFolders:Ljava/util/List;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedFolders:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedFolders:Ljava/util/List;

    .line 204
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->memberStorageMap:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->memberStorageMap:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->memberStorageMap:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetStorageReport;->memberStorageMap:Ljava/util/List;

    .line 205
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GetStorageReport;
    :cond_8
    move v1, v2

    .line 209
    goto :goto_0
.end method

.method public getMemberStorageMap()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/StorageBucket;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->memberStorageMap:Ljava/util/List;

    return-object v0
.end method

.method public getSharedFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedFolders:Ljava/util/List;

    return-object v0
.end method

.method public getSharedUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedUsage:Ljava/util/List;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->totalUsage:Ljava/util/List;

    return-object v0
.end method

.method public getUnsharedUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->unsharedUsage:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 181
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->totalUsage:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedUsage:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->unsharedUsage:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->sharedFolders:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetStorageReport;->memberStorageMap:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 188
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/BaseDfbReport;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 189
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
