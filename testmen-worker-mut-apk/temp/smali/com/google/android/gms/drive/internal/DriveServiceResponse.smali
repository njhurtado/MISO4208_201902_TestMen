.class public Lcom/google/android/gms/drive/internal/DriveServiceResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/DriveServiceResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Km:Landroid/os/IBinder;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->Km:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzad;->zza(Lcom/google/android/gms/drive/internal/DriveServiceResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbci()Lcom/google/android/gms/common/internal/zzs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->Km:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzs$zza;->zzds(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    return-object v0
.end method
