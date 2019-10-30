.class public Lcom/google/android/gms/drive/internal/AddEventListenerRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/AddEventListenerRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DN:I

.field final Hi:Lcom/google/android/gms/drive/DriveId;

.field final II:Lcom/google/android/gms/drive/events/TransferStateOptions;

.field final IJ:Lcom/google/android/gms/drive/events/TransferProgressOptions;

.field final Ih:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/DriveId;

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;Lcom/google/android/gms/drive/events/TransferStateOptions;Lcom/google/android/gms/drive/events/TransferProgressOptions;)V

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;Lcom/google/android/gms/drive/events/TransferStateOptions;Lcom/google/android/gms/drive/events/TransferProgressOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->Hi:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->DN:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->Ih:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->II:Lcom/google/android/gms/drive/events/TransferStateOptions;

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->IJ:Lcom/google/android/gms/drive/events/TransferProgressOptions;

    return-void
.end method


# virtual methods
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->Hi:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->DN:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zza;->zza(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Landroid/os/Parcel;I)V

    return-void
.end method
