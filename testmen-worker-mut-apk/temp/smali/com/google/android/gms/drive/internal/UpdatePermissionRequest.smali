.class public Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final HE:Ljava/lang/String;

.field final HT:Ljava/lang/String;

.field final Hi:Lcom/google/android/gms/drive/DriveId;

.field final IN:Z

.field final Lj:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzby;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzby;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;->Hi:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;->HT:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;->Lj:I

    iput-boolean p5, p0, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;->IN:Z

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;->HE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzby;->zza(Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;Landroid/os/Parcel;I)V

    return-void
.end method
