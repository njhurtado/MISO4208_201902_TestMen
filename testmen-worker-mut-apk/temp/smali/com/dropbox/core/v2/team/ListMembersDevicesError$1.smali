.class synthetic Lcom/dropbox/core/v2/team/ListMembersDevicesError$1;
.super Ljava/lang/Object;
.source "ListMembersDevicesError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/ListMembersDevicesError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$team$ListMembersDevicesError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/dropbox/core/v2/team/ListMembersDevicesError;->values()[Lcom/dropbox/core/v2/team/ListMembersDevicesError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/team/ListMembersDevicesError$1;->$SwitchMap$com$dropbox$core$v2$team$ListMembersDevicesError:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/team/ListMembersDevicesError$1;->$SwitchMap$com$dropbox$core$v2$team$ListMembersDevicesError:[I

    sget-object v1, Lcom/dropbox/core/v2/team/ListMembersDevicesError;->RESET:Lcom/dropbox/core/v2/team/ListMembersDevicesError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/ListMembersDevicesError;->ordinal()I

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
