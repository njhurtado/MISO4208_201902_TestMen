.class public final enum Lcom/dropbox/core/v2/team/ListTeamDevicesError;
.super Ljava/lang/Enum;
.source "ListTeamDevicesError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ListTeamDevicesError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/ListTeamDevicesError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/ListTeamDevicesError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/ListTeamDevicesError;

.field public static final enum RESET:Lcom/dropbox/core/v2/team/ListTeamDevicesError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/ListTeamDevicesError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;->RESET:Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/ListTeamDevicesError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;->OTHER:Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    sget-object v1, Lcom/dropbox/core/v2/team/ListTeamDevicesError;->RESET:Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/ListTeamDevicesError;->OTHER:Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;->$VALUES:[Lcom/dropbox/core/v2/team/ListTeamDevicesError;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListTeamDevicesError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/ListTeamDevicesError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;->$VALUES:[Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/ListTeamDevicesError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    return-object v0
.end method
