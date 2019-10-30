.class public Lcom/google/android/gms/drive/query/SearchableField;
.super Ljava/lang/Object;


# static fields
.field public static final IS_PINNED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MM:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final MN:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<",
            "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARENTS:Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field public static final STARRED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRASHED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Ml:Lcom/google/android/gms/internal/zzsp$zzg;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->TITLE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mc:Lcom/google/android/gms/internal/zzsp$zzc;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mm:Lcom/google/android/gms/internal/zzsp$zzh;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->TRASHED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mh:Lcom/google/android/gms/drive/metadata/internal/zzm;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->PARENTS:Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->MB:Lcom/google/android/gms/internal/zzsr$zzf;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MM:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mj:Lcom/google/android/gms/internal/zzsp$zzf;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->STARRED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->Mz:Lcom/google/android/gms/internal/zzsr$zzd;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->My:Lcom/google/android/gms/internal/zzsr$zzb;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LU:Lcom/google/android/gms/internal/zzsp$zzb;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->IS_PINNED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LH:Lcom/google/android/gms/internal/zzsp$zza;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MN:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
