.class synthetic Lorg/gnucash/android/db/adapter/DatabaseAdapter$1;
.super Ljava/lang/Object;
.source "DatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$gnucash$android$db$adapter$DatabaseAdapter$UpdateMethod:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 223
    invoke-static {}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->values()[Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$1;->$SwitchMap$org$gnucash$android$db$adapter$DatabaseAdapter$UpdateMethod:[I

    :try_start_0
    sget-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$1;->$SwitchMap$org$gnucash$android$db$adapter$DatabaseAdapter$UpdateMethod:[I

    sget-object v1, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$1;->$SwitchMap$org$gnucash$android$db$adapter$DatabaseAdapter$UpdateMethod:[I

    sget-object v1, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->update:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
