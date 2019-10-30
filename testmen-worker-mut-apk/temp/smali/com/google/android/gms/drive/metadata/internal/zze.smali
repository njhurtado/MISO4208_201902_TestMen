.class public final Lcom/google/android/gms/drive/metadata/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/metadata/internal/zze$zza;
    }
.end annotation


# static fields
.field private static final LA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/metadata/internal/zze$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final Lz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zze;->Lz:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zze;->LA:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LF:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Ml:Lcom/google/android/gms/internal/zzsp$zzg;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mc:Lcom/google/android/gms/internal/zzsp$zzc;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mj:Lcom/google/android/gms/internal/zzsp$zzf;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mm:Lcom/google/android/gms/internal/zzsp$zzh;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LS:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LR:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LT:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LU:Lcom/google/android/gms/internal/zzsp$zzb;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LV:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LP:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LX:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LY:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LZ:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mh:Lcom/google/android/gms/drive/metadata/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LG:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Me:Lcom/google/android/gms/drive/metadata/zzb;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LI:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LQ:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LJ:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LK:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LL:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LM:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mb:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LW:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Md:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mf:Lcom/google/android/gms/drive/metadata/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mg:Lcom/google/android/gms/drive/metadata/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mi:Lcom/google/android/gms/internal/zzsp$zzd;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mn:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mo:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LO:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LN:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mk:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Ma:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->LH:Lcom/google/android/gms/internal/zzsp$zza;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mp:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mq:Lcom/google/android/gms/drive/metadata/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mr:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Ms:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mt:Lcom/google/android/gms/internal/zzsp$zze;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mu:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mv:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->Mx:Lcom/google/android/gms/internal/zzsr$zza;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->Mz:Lcom/google/android/gms/internal/zzsr$zzd;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->MA:Lcom/google/android/gms/internal/zzsr$zzc;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->MB:Lcom/google/android/gms/internal/zzsr$zzf;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->My:Lcom/google/android/gms/internal/zzsr$zzb;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsr;->MC:Lcom/google/android/gms/internal/zzsr$zze;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzst;->ME:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzst;->MF:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsp;->Mh:Lcom/google/android/gms/drive/metadata/internal/zzm;

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzm;->LE:Lcom/google/android/gms/drive/metadata/internal/zze$zza;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zza(Lcom/google/android/gms/drive/metadata/internal/zze$zza;)V

    sget-object v0, Lcom/google/android/gms/internal/zzsq;->Mw:Lcom/google/android/gms/drive/metadata/internal/zze$zza;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zze;->zza(Lcom/google/android/gms/drive/metadata/internal/zze$zza;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zze;->LA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/zze$zza;

    invoke-interface {v0, p0}, Lcom/google/android/gms/drive/metadata/internal/zze$zza;->zzb(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/drive/metadata/internal/zze$zza;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zze;->LA:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/internal/zze$zza;->zzbdc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/internal/zze$zza;->zzbdc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "A cleaner for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static zzb(Lcom/google/android/gms/drive/metadata/MetadataField;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zze;->Lz:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Duplicate field name registered: "

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zze;->Lz:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zzbdb()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zze;->Lz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static zzit(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zze;->Lz:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/MetadataField;

    return-object v0
.end method
