.class public final enum Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;
.super Ljava/lang/Enum;
.source "UpdateFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

.field public static final enum ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

.field public static final enum INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

.field public static final enum MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

.field public static final enum NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    const-string v1, "ACCESS_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    const-string v1, "MEMBER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    const-string v1, "NO_EXPLICIT_ACCESS"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    const-string v1, "INSUFFICIENT_PLAN"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    const-string v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    return-object v0
.end method
