.class public final Lcom/google/android/gms/drive/internal/zzz;
.super Ljava/lang/Object;


# static fields
.field private static final Ke:Lcom/google/android/gms/common/internal/zzq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzq;

    const-string v1, "GmsDrive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/internal/zzz;->Ke:Lcom/google/android/gms/common/internal/zzq;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/zzz;->Ke:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzq;->zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/zzz;->Ke:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/android/gms/common/internal/zzq;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzae(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/zzz;->Ke:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzq;->zzae(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzaf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/zzz;->Ke:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzq;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/zzz;->Ke:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzq;->zzag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/drive/internal/zzz;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
