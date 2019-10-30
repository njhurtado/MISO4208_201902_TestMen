.class public Lcom/owncloud/android/lib/common/Quota;
.super Ljava/lang/Object;
.source "Quota.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field public free:J

.field public quota:J

.field public relative:D

.field public total:J

.field public used:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(JJJDJ)V
    .locals 1
    .param p1, "free"    # J
    .param p3, "used"    # J
    .param p5, "total"    # J
    .param p7, "relative"    # D
    .param p9, "quota"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/owncloud/android/lib/common/Quota;->free:J

    .line 42
    iput-wide p3, p0, Lcom/owncloud/android/lib/common/Quota;->used:J

    .line 43
    iput-wide p5, p0, Lcom/owncloud/android/lib/common/Quota;->total:J

    .line 44
    iput-wide p9, p0, Lcom/owncloud/android/lib/common/Quota;->quota:J

    .line 45
    iput-wide p7, p0, Lcom/owncloud/android/lib/common/Quota;->relative:D

    .line 46
    return-void
.end method


# virtual methods
.method public getFree()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/Quota;->free:J

    return-wide v0
.end method

.method public getQuota()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/Quota;->quota:J

    return-wide v0
.end method

.method public getRelative()D
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/Quota;->relative:D

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/Quota;->total:J

    return-wide v0
.end method

.method public getUsed()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/Quota;->used:J

    return-wide v0
.end method

.method public setFree(J)V
    .locals 1
    .param p1, "free"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/owncloud/android/lib/common/Quota;->free:J

    .line 54
    return-void
.end method

.method public setQuota(J)V
    .locals 1
    .param p1, "quota"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/owncloud/android/lib/common/Quota;->quota:J

    .line 78
    return-void
.end method

.method public setRelative(D)V
    .locals 1
    .param p1, "relative"    # D

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/owncloud/android/lib/common/Quota;->relative:D

    .line 86
    return-void
.end method

.method public setTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/owncloud/android/lib/common/Quota;->total:J

    .line 70
    return-void
.end method

.method public setUsed(J)V
    .locals 1
    .param p1, "used"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/owncloud/android/lib/common/Quota;->used:J

    .line 62
    return-void
.end method
