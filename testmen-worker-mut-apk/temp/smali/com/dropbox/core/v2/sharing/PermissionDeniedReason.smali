.class public final enum Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
.super Ljava/lang/Enum;
.source "PermissionDeniedReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final enum USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "USER_NOT_SAME_TEAM_AS_OWNER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "USER_NOT_ALLOWED_BY_OWNER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "TARGET_IS_INDIRECT_MEMBER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "TARGET_IS_OWNER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "TARGET_IS_SELF"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "TARGET_NOT_ACTIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "FOLDER_IS_LIMITED_TEAM_FOLDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "OWNER_NOT_ON_TEAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "PERMISSION_DENIED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "RESTRICTED_BY_TEAM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "USER_ACCOUNT_TYPE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "USER_NOT_ON_TEAM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "FOLDER_IS_INSIDE_SHARED_FOLDER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const-string v1, "OTHER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 21
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->$VALUES:[Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->$VALUES:[Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-object v0
.end method
