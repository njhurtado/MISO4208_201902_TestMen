.class public final enum Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
.super Ljava/lang/Enum;
.source "SharedLinkCreatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

.field public static final enum DEFAULT_PUBLIC:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

.field public static final enum DEFAULT_TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

.field public static final enum TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    const-string v1, "DEFAULT_PUBLIC"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->DEFAULT_PUBLIC:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    const-string v1, "DEFAULT_TEAM_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->DEFAULT_TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    const-string v1, "TEAM_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->DEFAULT_PUBLIC:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->DEFAULT_TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    return-object v0
.end method
