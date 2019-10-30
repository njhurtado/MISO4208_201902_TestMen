.class public Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final NU:Ljava/lang/String;

.field final NV:Ljava/lang/String;

.field final NW:I

.field final NX:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/zze;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->NU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->NV:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->NW:I

    iput p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->NX:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/zze;->zza(Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;Landroid/os/Parcel;I)V

    return-void
.end method
