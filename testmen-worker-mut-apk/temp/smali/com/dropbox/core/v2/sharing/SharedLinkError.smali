.class public final enum Lcom/dropbox/core/v2/sharing/SharedLinkError;
.super Ljava/lang/Enum;
.source "SharedLinkError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedLinkError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedLinkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/SharedLinkError;

.field public static final enum SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/SharedLinkError;

.field public static final enum SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/SharedLinkError;

.field public static final enum UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/SharedLinkError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    const-string v1, "SHARED_LINK_NOT_FOUND"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharedLinkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    const-string v1, "SHARED_LINK_ACCESS_DENIED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    const-string v1, "UNSUPPORTED_LINK_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/SharedLinkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/SharedLinkError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/SharedLinkError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;->$VALUES:[Lcom/dropbox/core/v2/sharing/SharedLinkError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/SharedLinkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/SharedLinkError;

    return-object v0
.end method
