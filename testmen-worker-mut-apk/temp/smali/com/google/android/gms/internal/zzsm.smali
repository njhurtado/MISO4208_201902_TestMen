.class public final Lcom/google/android/gms/internal/zzsm;
.super Lcom/google/android/gms/internal/zzare;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzare",
        "<",
        "Lcom/google/android/gms/internal/zzsm;",
        ">;"
    }
.end annotation


# instance fields
.field public Lk:J

.field public Ll:J

.field public Lm:J

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzare;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsm;->zzbcu()Lcom/google/android/gms/internal/zzsm;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsm;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzsm;

    iget v2, p0, Lcom/google/android/gms/internal/zzsm;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsm;->versionCode:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lk:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsm;->Lk:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Ll:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsm;->Ll:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lm:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsm;->Lm:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzsm;->versionCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lk:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsm;->Lk:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Ll:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsm;->Ll:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lm:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsm;->Lm:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarg;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarg;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzard;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzsm;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzard;->zzae(II)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lk:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzd(IJ)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Ll:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzd(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lm:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzd(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzare;->zza(Lcom/google/android/gms/internal/zzard;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzark;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsm;->zzv(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzsm;

    move-result-object v0

    return-object v0
.end method

.method public zzbcu()Lcom/google/android/gms/internal/zzsm;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsm;->versionCode:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lk:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Ll:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lm:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsm;->bqv:Lcom/google/android/gms/internal/zzarg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsm;->bqE:I

    return-object p0
.end method

.method public zzv(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzsm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzare;->zza(Lcom/google/android/gms/internal/zzarc;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cA()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsm;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsm;->Lk:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsm;->Ll:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsm;->Lm:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method protected zzx()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzare;->zzx()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzsm;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzard;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lk:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Ll:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsm;->Lm:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
