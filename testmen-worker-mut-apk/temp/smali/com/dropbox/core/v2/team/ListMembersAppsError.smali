.class public final enum Lcom/dropbox/core/v2/team/ListMembersAppsError;
.super Ljava/lang/Enum;
.source "ListMembersAppsError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ListMembersAppsError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/ListMembersAppsError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/ListMembersAppsError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/ListMembersAppsError;

.field public static final enum RESET:Lcom/dropbox/core/v2/team/ListMembersAppsError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/ListMembersAppsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;->RESET:Lcom/dropbox/core/v2/team/ListMembersAppsError;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/ListMembersAppsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;->OTHER:Lcom/dropbox/core/v2/team/ListMembersAppsError;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/team/ListMembersAppsError;

    sget-object v1, Lcom/dropbox/core/v2/team/ListMembersAppsError;->RESET:Lcom/dropbox/core/v2/team/ListMembersAppsError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/ListMembersAppsError;->OTHER:Lcom/dropbox/core/v2/team/ListMembersAppsError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;->$VALUES:[Lcom/dropbox/core/v2/team/ListMembersAppsError;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMembersAppsError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/ListMembersAppsError;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;->$VALUES:[Lcom/dropbox/core/v2/team/ListMembersAppsError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/ListMembersAppsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/ListMembersAppsError;

    return-object v0
.end method
