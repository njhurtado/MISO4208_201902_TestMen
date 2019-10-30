.class public Lcom/google/android/gms/internal/zzsr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsr$zze;,
        Lcom/google/android/gms/internal/zzsr$zzf;,
        Lcom/google/android/gms/internal/zzsr$zzc;,
        Lcom/google/android/gms/internal/zzsr$zzd;,
        Lcom/google/android/gms/internal/zzsr$zzb;,
        Lcom/google/android/gms/internal/zzsr$zza;
    }
.end annotation


# static fields
.field public static final MA:Lcom/google/android/gms/internal/zzsr$zzc;

.field public static final MB:Lcom/google/android/gms/internal/zzsr$zzf;

.field public static final MC:Lcom/google/android/gms/internal/zzsr$zze;

.field public static final Mx:Lcom/google/android/gms/internal/zzsr$zza;

.field public static final My:Lcom/google/android/gms/internal/zzsr$zzb;

.field public static final Mz:Lcom/google/android/gms/internal/zzsr$zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zzsr$zza;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzsr$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsr;->Mx:Lcom/google/android/gms/internal/zzsr$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzsr$zzb;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzsr$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsr;->My:Lcom/google/android/gms/internal/zzsr$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzsr$zzd;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzsr$zzd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsr;->Mz:Lcom/google/android/gms/internal/zzsr$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzsr$zzc;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzsr$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsr;->MA:Lcom/google/android/gms/internal/zzsr$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzsr$zzf;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzsr$zzf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsr;->MB:Lcom/google/android/gms/internal/zzsr$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzsr$zze;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzsr$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsr;->MC:Lcom/google/android/gms/internal/zzsr$zze;

    return-void
.end method
