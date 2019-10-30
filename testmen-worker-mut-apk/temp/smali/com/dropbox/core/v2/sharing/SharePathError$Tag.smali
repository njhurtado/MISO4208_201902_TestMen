.class public final enum Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
.super Ljava/lang/Enum;
.source "SharePathError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharePathError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharePathError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INVALID_PATH_ROOT:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "IS_FILE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INSIDE_SHARED_FOLDER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "CONTAINS_SHARED_FOLDER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "CONTAINS_APP_FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "CONTAINS_TEAM_FOLDER"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "IS_APP_FOLDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INSIDE_APP_FOLDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "IS_PUBLIC_FOLDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INSIDE_PUBLIC_FOLDER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "ALREADY_SHARED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INVALID_PATH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "IS_OSX_PACKAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INSIDE_OSX_PACKAGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INVALID_PATH_ROOT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH_ROOT:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "OTHER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 35
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH_ROOT:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    return-object v0
.end method
