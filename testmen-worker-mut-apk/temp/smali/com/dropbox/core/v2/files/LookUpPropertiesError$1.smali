.class synthetic Lcom/dropbox/core/v2/files/LookUpPropertiesError$1;
.super Ljava/lang/Object;
.source "LookUpPropertiesError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/LookUpPropertiesError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$files$LookUpPropertiesError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/dropbox/core/v2/files/LookUpPropertiesError;->values()[Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/files/LookUpPropertiesError$1;->$SwitchMap$com$dropbox$core$v2$files$LookUpPropertiesError:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/files/LookUpPropertiesError$1;->$SwitchMap$com$dropbox$core$v2$files$LookUpPropertiesError:[I

    sget-object v1, Lcom/dropbox/core/v2/files/LookUpPropertiesError;->PROPERTY_GROUP_NOT_FOUND:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/LookUpPropertiesError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
