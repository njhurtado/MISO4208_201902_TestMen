.class public Lcom/google/android/gms/drive/internal/OnListEntriesResponse;
.super Lcom/google/android/gms/drive/WriteAwareParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnListEntriesResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Jt:Z

.field final KX:Lcom/google/android/gms/common/data/DataHolder;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzaz;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/WriteAwareParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->KX:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->Jt:Z

    return-void
.end method


# virtual methods
.method protected zzak(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzaz;->zza(Lcom/google/android/gms/drive/internal/OnListEntriesResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbcp()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->KX:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzbcq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->Jt:Z

    return v0
.end method
