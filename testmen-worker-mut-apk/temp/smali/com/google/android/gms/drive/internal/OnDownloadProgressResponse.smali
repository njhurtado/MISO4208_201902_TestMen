.class public Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final KM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveFileRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final KN:J

.field final KO:J

.field final KP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveFileRange;",
            ">;"
        }
    .end annotation
.end field

.field final mVersionCode:I

.field final zzbqm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->KM:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/drive/internal/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzav;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveFileRange;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->KN:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->KO:J

    iput p6, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzbqm:I

    iput-object p7, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->KP:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzav;->zza(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbcm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->KN:J

    return-wide v0
.end method

.method public zzbcn()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->KO:J

    return-wide v0
.end method
